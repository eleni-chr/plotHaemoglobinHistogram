# Plasma Haemolysis Assessment Tool
Visualise Plasma Haemolysis Distribution

*Function written by Eleni Christoforidou in MATLAB R2023b.*

This repository contains a MATLAB function designed to assess haemolysis in blood plasma samples by visualising haemoglobin concentrations. The function visualises the distribution of haemoglobin concentrations among different plasma samples using histogram plots.

## Dependencies
MATLAB version R2023b or later recommended. Ensure MATLAB is properly installed on your system.

## Installation
Clone this repository or download it as a ZIP file. No additional installation steps are required, aside from ensuring MATLAB is properly installed on your system.

## Usage
To use this function, ensure the data file is in the correct format and located appropriately, as specified in the function's parameter details.

## Function Description

plotHaemoglobinHistogram.m

### Description
This function reads haemoglobin concentration data from a specified Excel file and creates a histogram to visualise the distribution of these concentrations among plasma samples. It is specifically designed to help assess haemolysis by showing the spread and commonality of haemoglobin concentrations in blood plasma, expressed in grams per liter (g/L). The histogram facilitates the quick identification of outliers and general trends within the sample set.

### Inputs
excelFile: A string specifying the path to the Excel file containing haemoglobin concentration data. Concentrations should be in the second column and expressed in grams per liter (g/L).

### Outputs
A histogram is displayed showing the distribution of haemoglobin concentrations. The histogram is saved as an SVG file named HaemoglobinConcentrationHistogram.svg.

### Usage
```plotHaemoglobinHistogram('path/to/excelFile.xlsx');```

### Plot Features
- X-axis: Haemoglobin Concentration (g/L)
- Y-axis: Percentage of Plasma Samples (%)
- Visualisation: The histogram is normalised to probability to provide a clear view of the frequency distribution as percentages. This helps in assessing the proportion of samples within specific haemoglobin concentration ranges.
Additional Details: The plot background is set to transparent, which may be useful for incorporating the figure into presentations or publications.
