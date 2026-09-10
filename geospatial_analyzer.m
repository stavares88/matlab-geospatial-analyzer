% MATLAB Geospatial Data Analyzer
% Analyze geographic elevation data

clear;
clc;

% Geographic data
elevations = [1525, 1609, 1655, 1621, 1498];

latitudes = [40.5853, 39.7392, 40.0150, 38.8339, 39.5501];

longitudes = [-105.0844, -104.9903, -105.2705, -104.8214, -105.7821];

locations = ["Fort Collins", "Denver", "Boulder", "Colorado Springs", "Central Colorado"];

% Elevation analysis
averageElevation = mean(elevations);

[highestElevation, highestIndex] = max(elevations);

lowestElevation = min(elevations);

% Coordinates of highest elevation
highestLatitude = latitudes(highestIndex);
highestLongitude = longitudes(highestIndex);
highestLocation = locations(highestIndex);
% Display results
fprintf('MATLAB Geospatial Data Analyzer\n');
fprintf('--------------------------------\n');
fprintf('Average elevation: %.2f\n', averageElevation);
fprintf('Highest elevation: %.0f\n', highestElevation);
fprintf('Lowest elevation: %.0f\n', lowestElevation);
fprintf('Highest point latitude: %.4f\n', highestLatitude);
fprintf('Highest point longitude: %.4f\n', highestLongitude);
fprintf('Highest location: %s\n', highestLocation)
% Plot elevation data
figure;

plot(elevations, '-o');

title('Elevation by Location');
xlabel('Location');
ylabel('Elevation');

xticks(1:length(locations));
xticklabels(locations);
xtickangle(45);

grid on;

locations = ["Fort Collins", "Denver", "Boulder", "Colorado Springs", "Central Colorado"];