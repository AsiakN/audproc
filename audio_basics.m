% Code to record audio 

recObj = audiorecorder; % create the record object. Default creates an 8kHz, 8bit, ...
%1 channel audio object 

% disp('Start speaking.')
recordblocking(recObj, 20);% start recording for 20s

% disp('End of Recording.');
play(recObj); % play the recordered object. An alternative command would be sounds(y,fs) 

save hello.mat recObj; % save the audio file 
y = getaudiodata(recObj); % extract the features of the audio file 
plot(y); % plot the audio features in the time domain

load('handel.mat') % load an already existing audio file 
whos 
player = audioplayer(y,Fs); % creates an audioplayer object for the Signal Y
play(player); % plays the player object . play function takes more inputs

%% Other functions 
% audioread ()   --- reads a .wav audio file 
% audioinfo ()   ---- returns the features of an audio 
% audiowrite(0   ---- creates/writes an audio file to a particular location
%% Features of an audio 
% 1. sampling freqeuncy
% 2. Number of channels ( stereo or mono)
% 3. Number of bits 
% 4. Duration of the audio file in seconds
% 5. Compression method
