## this script generate data simulating the original data
%
% FSMKL
% jseoane
% j.seoane@bristol.ac.uk
% This code is protected under GPL license

cnv = random('Normal',2.84E-4,0.1485,500,1853);
exp = random('Normal',6.35,0.2957,500,4957);

load('../FS_MKL_Prob/names.mat')
inamescnv = randi(18539,1,1853);
inamesexp = randi(49577,1,4957);

cnv_names = cnv_names(:,inamescnv);
exp_names = exp_names(:,inamesexp);

ERstatus5 = random('bino',1,0.75,1,500);

binaryNewClinic = binaryNewClinic(randi(1992,1,500),:);
numericNewClinic = numericNewClinic(randi(1992,1,500),:);

output = random('bino',1,0.368,1,500);

save('randomData.mat','cnv','exp','cnv_names','exp_names','ERstatus5','binaryNewClinic','numericNewClinic','output');
