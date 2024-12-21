# 260-final-project
Final project for BST 260  
Group members: Minda Zhao, Wanyan Yuan, Yuze Wei  

---

# COVID-19 Mortality Trends Analysis (2020-2024)

## Overview
This project investigates the impact of the COVID-19 pandemic on mortality trends across the United States. By analyzing state-level and national data, the study identifies patterns in COVID-19 waves, assesses the effectiveness of public health strategies, and explores the relationship between excess mortality and COVID-19-specific deaths.


---

## Dataset Information
The project utilizes multiple datasets from reliable sources:
1. **Population Data**: U.S. Census Bureau (2020-2024) - [Link](https://www.census.gov/data/tables/time-series/demo/popest/2020s-state-total.html).
2. **COVID-19 Cases and Deaths**: CDC API (2020-2024) - [Link](https://data.cdc.gov/resource/pwn4-m3yp.json).
3. **Regional Grouping Data**: GitHub-hosted JSON file - [Link](https://github.com/datasciencelabs/2024/raw/refs/heads/main/data/regions.json).
4. **Weekly Death Counts**: National Center for Health Statistics (2015-2023) - [Link](https://data.cdc.gov/NCHS/Weekly-Counts-of-Deaths-by-Jurisdiction-and-Age/y5bj-9g5w/about_data).

---

## Installation and Usage
### Prerequisites
- **Programming Language**: R (for data analysis and visualization)
- Required R packages:
  - `tidyverse`
  - `lubridate`
  - `ggplot2`
  - `dplyr`

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/260-final-project.git
   cd 260-final-project
   ```
2. Install required R packages:
   ```R
   install.packages(c("tidyverse", "lubridate", "ggplot2", "dplyr"))
   ```
3. Open the `.qmd` file in code folder in RStudio:
   - Open `Final-Project.qmd` from the root folder.
   - Click the "Render" button in RStudio to generate the final report in PDF format.

---

## Project Structure
```
260-final-project/
│
├── README.md                     # Project overview
├── raw-data/                     # Original raw datasets
│   ├── Weekly_Counts_of_Deaths_by_Jurisdiction_and_Age_20241220.csv
│   ├── NST-EST2024-POP.xlsx
│   └── nst-est2020int-pop.xlsx
├── code/                         # Data analysis and processing scripts
│   ├── script.R
│   ├── final-project.qmd
│   └── census-key.R
├── docs/                         # Supporting documents and images
│   ├── Final-Project.pdf
│   ├── graph2.png
|   ├── graph1.png
│   ├── table1.png
│   ├── table2.png
│   └── graph3.png
├── Supplementary Methods/        # Supplementary analysis and methods
│   ├── Supplementary-Methods.pdf
│   ├── Cases_Mortality_with_Waves.png
│   └── Supplementary Methods.qmd
└── data/                         # Cleaned datasets
    ├── clean_population_2020_2024.rds
    ├── clean_weekly_counts_of_deaths.rds
    └── clean_population_2010_2019.rds
```

---

## Contributors
- **Minda Zhao**
- **Wanyan Yuan**
- **Yuze Wei**

---

## License
This project is licensed under the [MIT License](LICENSE).
