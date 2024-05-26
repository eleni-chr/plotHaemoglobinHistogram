function plotHaemoglobinHistogram(excelFile)
%% Function written by Eleni Christoforidou in MATLAB R2023b.

% This function reads Haemoglobin concentration data from a specified Excel file 
% and plots a histogram to visualise the distribution of these concentrations 
% among different plasma samples. The function assumes that the Haemoglobin 
% concentrations are stored in the second column of the Excel file and are 
% expressed in grams per litre (g/L). The histogram is saved as an 
% SVG file.
%
% Parameters:
%   excelFile: A string specifying the path to the Excel file containing
%              Haemoglobin concentration data. The concentrations should be in the
%              second column of the Excel file and expressed in g/l.
%
% Output:
%   A histogram is displayed showing the distribution of Haemoglobin 
%   concentrations. The histogram is  saved as an SVG file named 
%   'HaemoglobinConcentrationHistogram.svg'.
%
% Example:
%   plotHaemoglobinHistogram('path/to/excelFile.xlsx')

    % Read the Excel file
    dataTable = readtable(excelFile);

    % Extract Haemoglobin concentrations
    HbConcentrations = dataTable{:, 2}; % Assuming concentrations are in the second column (in g/l).

    % Create a figure
    fig = figure;
    set(fig, 'Color', 'none', 'InvertHardcopy', 'off'); % Set figure background to transparent


    % Create the histogram with normalization to probability
    h = histogram(HbConcentrations, 'Normalization', 'probability');
    % Update axis after plotting to adjust y-scale to percentage
    ax = gca; % Get current axis
    ax.YTick = 0:0.05:1; % Define Y-axis ticks from 0 to 1 (0% to 100%)
    ax.YTickLabel = arrayfun(@(x) sprintf('%.0f', x*100), ax.YTick, 'UniformOutput', false); % Convert to percentage labels
    xlabel('Haemoglobin Concentration (g/L)');
    ylabel('Percentage of Plasma Samples (%)');
    title('Distribution of Haemoglobin Concentrations in the Discovery Cohort');

    % Save the figure as SVG with a transparent background
    svgFileName = 'HaemoglobinConcentrationHistogram.svg';
    saveas(fig, svgFileName, 'svg');
    close(fig);
end
