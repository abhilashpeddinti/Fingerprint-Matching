clear all; clc; addpath(genpath(pwd));
%% BUILD FINGERPRINT TEMPLATE DATABASE
% build_db(9,8);        %THIS WILL TAKE ABOUT 30 MINUTES
load('db.mat');
%% EXTRACT FEATURES FROM AN ARBITRARY FINGERPRINT
filename='101_1.tif';
img = imread(filename);
if ndims(img) == 3; img = rgb2gray(img); end  % Color Images
disp(['Extracting features from ' filename ' ...']);
ffnew=ext_finger(img,1);
%% FOR EACH FINGERPRINT TEMPLATE, CALCULATE MATCHING SCORE IN COMPARISION WITH FIRST ONE
S=zeros(72,1);
for i=1:72
    second=['10' num2str(fix((i-1)/8)+1) '_' num2str(mod(i-1,8)+1)];    
    fprintf(['Computing similarity between ' filename ' and ' second ':']);
    S(i)=match(ffnew,ff{i});
    fprintf([num2str(S(i)) '\n']);
    drawnow
end
%% OFFER MATCHED FINGERPRINTS
Matched_FingerPrints=find(S>0.48)