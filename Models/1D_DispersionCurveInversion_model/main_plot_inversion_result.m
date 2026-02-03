%% plot 1D inversion result
clear; close all; clc;
depth_max=30000;
vs_max=5000;
figure(1);
set(gcf,'unit','centimeters','position',[0 0 36 18]);
%% left
load('SWKR.mat');
nresult=size(vs_invert_point_repeat,2);
% set vs=0 in models
z_points_left=[0 z_points(1) z_points];
vs_init_point_repeat=[zeros(1,nresult);zeros(1,nresult);vs_init_point_repeat];
vs_invert_point_repeat=[zeros(1,nresult);zeros(1,nresult);vs_invert_point_repeat];
subplot(2,3,1);
for iresult=1:nresult
    plot(vs_init_point_repeat(:,iresult),z_points_left,'Color', [0.5 0.5 0.5],'linewidth',1); hold on;
    plot(vs_invert_point_repeat(:,iresult),z_points_left,'r','linewidth',1); hold on;
end
axis([0,vs_max,0,depth_max]);
set(gca,'ydir','reverse');
set(gca,'linewidth',1,'fontsize',15);
set(gca,'Xtick',[0 1000 2000 3000 4000 5000]);
set(gca,'XTickLabel',{'0','1','2','3','4','5'});
set(gca,'Ytick',[0 5000 10000 15000 20000 25000 30000]);
set(gca,'YTickLabel',{'0','5','10','15','20','25','30'});
xlabel('Velocity (km/s)','FontSize',15,'Fontweight','normal','color','k');
ylabel('Depth (km)','FontSize',15,'Fontweight','normal','color','k');

subplot(2,3,4);
ncount=size(freqs_scholte_repeat,1);
for iresult=1:nresult
    plot(freqs_scholte_repeat(:,1),vr_scholte_repeat(:,iresult),'ko'); hold on;
    plot(freqs_scholte_repeat(:,1),vr_iter_repeat(:,iresult),'r*'); hold on;
end
axis([0,0.5,1000,4000]);
set(gca,'linewidth',1,'fontsize',15);
set(gca,'Xtick',[0 0.1 0.2 0.3 0.4 0.5]);
set(gca,'XTickLabel',{'0','0.1','0.2','0.3','0.4','0.5'});
set(gca,'Ytick',[1000 2000 3000 4000]);
set(gca,'YTickLabel',{'1','2','3','4','5'});
xlabel('Frequency (Hz)','FontSize',15,'Fontweight','normal','color','k');
ylabel('Phase velocity (km/s)','FontSize',15,'Fontweight','normal','color','k');

% calculate average inversion result
vs_left_average=mean(vs_invert_point_repeat,2);
%% middle
load('KR.mat');
nresult=size(vs_invert_point_repeat,2);
% set vs=0 in models
z_points_middle=[0 z_points(1) z_points];
vs_init_point_repeat=[zeros(1,nresult);zeros(1,nresult);vs_init_point_repeat];
vs_invert_point_repeat=[zeros(1,nresult);zeros(1,nresult);vs_invert_point_repeat];
subplot(2,3,2);
for iresult=1:nresult
    plot(vs_init_point_repeat(:,iresult),z_points_middle,'Color', [0.5 0.5 0.5],'linewidth',1); hold on;
    plot(vs_invert_point_repeat(:,iresult),z_points_middle,'r','linewidth',1); hold on;
end
axis([0,vs_max,0,depth_max]);
set(gca,'ydir','reverse');
set(gca,'linewidth',1,'fontsize',15);
set(gca,'Xtick',[0 1000 2000 3000 4000 5000]);
set(gca,'XTickLabel',{'0','1','2','3','4','5'});
set(gca,'Ytick',[0 5000 10000 15000 20000 25000 30000]);
set(gca,'YTickLabel',{'0','5','10','15','20','25','30'});
xlabel('Velocity (km/s)','FontSize',15,'Fontweight','normal','color','k');
ylabel('Depth (km)','FontSize',15,'Fontweight','normal','color','k');

subplot(2,3,5);
ncount=size(freqs_scholte_repeat,1);
for iresult=1:nresult
    plot(freqs_scholte_repeat(:,1),vr_scholte_repeat(:,iresult),'ko'); hold on;
    plot(freqs_scholte_repeat(:,1),vr_iter_repeat(:,iresult),'r*'); hold on;
end
axis([0,0.5,1000,4000]);
set(gca,'linewidth',1,'fontsize',15);
set(gca,'Xtick',[0 0.1 0.2 0.3 0.4 0.5]);
set(gca,'XTickLabel',{'0','0.1','0.2','0.3','0.4','0.5'});
set(gca,'Ytick',[1000 2000 3000 4000]);
set(gca,'YTickLabel',{'1','2','3','4','5'});
xlabel('Frequency (Hz)','FontSize',15,'Fontweight','normal','color','k');
ylabel('Phase velocity (km/s)','FontSize',15,'Fontweight','normal','color','k');

% calculate average inversion result
vs_middle_average=mean(vs_invert_point_repeat,2);

%% right
load('NEKR.mat');
nresult=size(vs_invert_point_repeat,2);
% set vs=0 in models
z_points_right=[0 z_points(1) z_points];
vs_init_point_repeat=[zeros(1,nresult);zeros(1,nresult);vs_init_point_repeat];
vs_invert_point_repeat=[zeros(1,nresult);zeros(1,nresult);vs_invert_point_repeat];
subplot(2,3,3);
for iresult=1:nresult
    plot(vs_init_point_repeat(:,iresult),z_points_right,'Color', [0.5 0.5 0.5],'linewidth',1); hold on;
    plot(vs_invert_point_repeat(:,iresult),z_points_right,'r','linewidth',1); hold on;
end
axis([0,vs_max,0,depth_max]);
set(gca,'ydir','reverse');
set(gca,'linewidth',1,'fontsize',15);
set(gca,'Xtick',[0 1000 2000 3000 4000 5000]);
set(gca,'XTickLabel',{'0','1','2','3','4','5'});
set(gca,'Ytick',[0 5000 10000 15000 20000 25000 30000]);
set(gca,'YTickLabel',{'0','5','10','15','20','25','30'});
xlabel('Velocity (km/s)','FontSize',15,'Fontweight','normal','color','k');
ylabel('Depth (km)','FontSize',15,'Fontweight','normal','color','k');

subplot(2,3,6);
ncount=size(freqs_scholte_repeat,1);
for iresult=1:nresult
    plot(freqs_scholte_repeat(:,1),vr_scholte_repeat(:,iresult),'ko'); hold on;
    plot(freqs_scholte_repeat(:,1),vr_iter_repeat(:,iresult),'r*'); hold on;
end
axis([0,0.5,1000,4000]);
set(gca,'linewidth',1,'fontsize',15);
set(gca,'Xtick',[0 0.1 0.2 0.3 0.4 0.5]);
set(gca,'XTickLabel',{'0','0.1','0.2','0.3','0.4','0.5'});
set(gca,'Ytick',[1000 2000 3000 4000]);
set(gca,'YTickLabel',{'1','2','3','4','5'});
xlabel('Frequency (Hz)','FontSize',15,'Fontweight','normal','color','k');
ylabel('Phase velocity (km/s)','FontSize',15,'Fontweight','normal','color','k');

% calculate average inversion result
vs_right_average=mean(vs_invert_point_repeat,2);
%% plot average inversion result in one figure
% calculate average initial model
load('SWKR.mat');
vs_init_point_repeat=[zeros(1,nresult);zeros(1,nresult);vs_init_point_repeat];
vs_init_average_left=mean(vs_init_point_repeat,2);
load('KR.mat');
vs_init_point_repeat=[zeros(1,nresult);zeros(1,nresult);vs_init_point_repeat];
vs_init_average_middle=mean(vs_init_point_repeat,2);
load('NEKR.mat');
vs_init_point_repeat=[zeros(1,nresult);zeros(1,nresult);vs_init_point_repeat];
vs_init_average_right=mean(vs_init_point_repeat,2);
figure(2);
set(gcf,'unit','centimeters','position',[0 0 8 10]);
plot(vs_init_average_left,z_points_left,'k--','linewidth',2); hold on;
%plot(vs_init_average_middle,z_points_middle,'g--','linewidth',2); hold on;
%plot(vs_init_average_right,z_points_right,'b--','linewidth',2); hold on;
plot(vs_left_average,z_points_left,'r','linewidth',2); hold on;
plot(vs_middle_average,z_points_middle,'g','linewidth',2); hold on;
plot(vs_right_average,z_points_right,'b','linewidth',2); hold on;
axis([0,vs_max,0,depth_max]);
set(gca,'ydir','reverse');
set(gca,'linewidth',1,'fontsize',18);
set(gca,'Xtick',[0 1000 2000 3000 4000 5000]);
set(gca,'XTickLabel',{'0','1','2','3','4','5'});
set(gca,'Ytick',[0 5000 10000 15000 20000 25000 30000]);
set(gca,'YTickLabel',{'0','5','10','15','20','25','30'});
xlabel('Velocity (km/s)','FontSize',18,'Fontweight','normal','color','k');
ylabel('Depth (km)','FontSize',18,'Fontweight','normal','color','k');
legend('Initial model','SWKR','KR','NEKR','fontsize',12);