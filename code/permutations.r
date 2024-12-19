# read both Knijnenburg raw data and group assignment from csv files
readData <- function(dataname="data.csv",groupname="groups.csv") {
	dat <- read.csv(dataname)
	group <- read.csv(groupname)
	list(data=as.matrix(dat),group=as.numeric(as.matrix(group)))
}

# test statistic for one row: difference in means between the two groups
test_statistic <- function(x,group) {
	mean(x[group==1])-mean(x[group==0])
}

# perform n permutations by computing the test statistic on shuffled groups
do_permutations <- function(x,group,n) {
	sapply(1:n, function(i) {
		test_statistic(x,sample(group))
	})
}

# computation on the cluster: compute test statistic on original group assignment as well as n permutations and return the number of exceedances
cluster <- function(n) {
	L <- readData()
	sapply(1:nrow(L$data),function(i) {
		# original assignment
		t0 <- test_statistic(L$data[i,],L$group)
		perm <- do_permutations(L$data[i,],L$group,n)
		exceedances <- sum(abs(perm)>abs(t0))
		return(exceedances)
	})
}

# test routine for n=100: compute test statistic on original group assignment and n permutations and return p-value estimates
test <- function(n=100) {
	exceedances <- cluster(n)
	p <- exceedances/n
	plot(sort(p),type="l")
}
