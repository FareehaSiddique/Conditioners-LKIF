clc
clear
load Amazon.mat


MAlen_shuru = 24;
NN_shuru = 90;
MA_shuru = 'UWMA';
np_shuru = 1;


variable_realization = length(SM(1,:));
for r=1:variable_realization
    [T21(:,r),err90(:,r),err95(:,r),err99(:,r)] = multiLK_code(MAlen_shuru ,NN_shuru,MA_shuru,np_shuru,LAI(:,r),SM(:,r),VPD(:,r),T(:,r),SSR(:,r));
    disp(num2str(r))
end


T21mean=nanmean(T21,2);

%T21_absmean=nanmean(T21_abs,2);
err90mean=nanmean(real(err90),2);
err95mean=nanmean(real(err95),2);
err99mean=nanmean(real(err99),2);

err90mean_2 = err90mean * -1;
err95mean_2 = err95mean * -1;
err99mean_2 = err99mean * -1;

T21mean2=T21mean(276:end,1);
err95mean2=err95mean(276:end,1);
err95mean_2a=err95mean_2(276:end,1);

%T21mean2=T21mean(264:end,1);
%err95mean2=err95mean(264:end,1);
%err95mean_2a=err95mean_2(264:end,1);

figure;plot(T21mean2,'color','b','LineWidth',1);hold on;plot(err95mean2,'color','r','LineWidth',1);hold on;plot(err95mean_2a,'color','r','LineWidth',1);
xlim([0 180])
%ylim([-0.06 0.06])
ylim([-0.06 0.12])
set(gca,'XTick',0:12:180,'FontSize',12,'FontName','Times New Roman','Linewidth',1);
%set(gca,'XTick',[1 49 97 145 193 241 289 337 385 433 455]);
%set(gca,'YTick',-0.06:0.02:0.06,'FontSize',12,'FontName','Times New Roman','Linewidth',1);
%set(gca,'YTick',-0.03:0.01:0.06,'FontSize',12,'FontName','Times New Roman','Linewidth',1);
set(gca,'YTick',-0.06:0.02:0.12,'FontSize',12,'FontName','Times New Roman','Linewidth',1);

%set(gca,'XTicklabel',{'2005','2006','2007','2008','2009','2010','2011','2012', '2013', '2014', '2015', '2016', '2017', '2018', ''}, 'Fontweight', 'bold');
set(gca,'XTicklabel',{'2004','2005','2006','2007','2008','2009','2010','2011','2012', '2013', '2014', '2015', '2016', '2017', '2018', ''}, 'Fontweight', 'bold');
set(gca,'YTicklabel',{'-0.06', '-0.04', '-0.02', '0', '0.02', '0.04','0.06', '0.08', '0.10', '0.12'});
%set(gca,'YTicklabel',{'-0.03', '-0.02', '-0.01', '0', '0.01', '0.02','0.03', '0.04', '0.05', '0.06'});
%xlabel('Time(year)','FontSize',14,'FontName','Times New Roman')
xlabel('Time(year)','FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold')
set(gca, 'XTickLabelRotation', 45)
%ylabel('Information Flow(nats/8day)','FontSize',14,'FontName','Times New Roman')
ylabel('Information Flow(nats/Month)','FontSize',14,'FontName','Times New Roman', 'FontWeight', 'bold')
% Add grid
grid on;

%set(gcf,'Position',[100 100 400 300]);
set(gcf,'Position',[481 225 731 496]);


%legend({'T_S_M_-_>_G_P_P','Sig_S_M_-_>_G_P_P',},'FontSize',12,'Location','northwest','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_S_M_-_>_G_P_P_|_V_P_D','Sig_S_M_-_>_G_P_P_|_V_P_D',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_S_M_-_>_G_P_P_|_V_P_D_,_T','Sig_S_M_-_>_G_P_P_|_V_P_D_,_T',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_S_M_-_>_G_P_P_|_V_P_D_,_T_,_S_S_R','Sig_S_M_-_>_G_P_P_|_V_P_D_,_T_,_S_S_R',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_S_M_-_>_G_P_P_|_V_P_D_,_S_S_R','Sig_S_M_-_>_G_P_P_|_V_P_D_,_S_S_R',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_V_P_D_-_>_G_P_P','Sig_V_P_D_-_>_G_P_P',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_V_P_D_-_>_G_P_P_|_S_M','Sig_V_P_D_-_>_G_P_P_|_S_M',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_V_P_D_-_>_G_P_P_|_S_M_,_T','Sig_V_P_D_-_>_G_P_P_|_S_M_,_T',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_V_P_D_-_>_G_P_P_|_S_M_,_T_,_S_S_R','Sig_V_P_D_-_>_G_P_P_|_S_M_,_T_S_S_R',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_V_P_D_-_>_G_P_P_|_S_M_,_S_S_R','Sig_V_P_D_-_>_G_P_P_|_S_M_,_S_S_R',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')


%legend({'T_S_M_-_>_L_A_I','Sig_S_M_-_>_L_A_I',},'FontSize',12,'Location','northwest','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_S_M_-_>_L_A_I_|_V_P_D','Sig_S_M_-_>_L_A_I_|_V_P_D',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_S_M_-_>_L_A_I_|_V_P_D_,_T','Sig_S_M_-_>_L_A_I_|_V_P_D_,_T',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
legend({'T_S_M_-_>_L_A_I_|_V_P_D_,_T_,_S_S_R','Sig_S_M_-_>_L_A_I_|_V_P_D_,_T_,_S_S_R',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_S_M_-_>_L_A_I_|_V_P_D_,_S_S_R','Sig_S_M_-_>_L_A_I_|_V_P_D_,_S_S_R',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_V_P_D_-_>_L_A_I','Sig_V_P_D_-_>_L_A_I',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_V_P_D_-_>_L_A_I_|_S_M','Sig_V_P_D_-_>_L_A_I_|_S_M',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_V_P_D_-_>_L_A_I_|_S_M_,_T','Sig_V_P_D_-_>_L_A_I_|_S_M_,_T',},'FontSize',12,'Location','northeast','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_V_P_D_-_>_L_A_I_|_S_M_,_S_S_R','Sig_V_P_D_-_>_L_A_I_|_S_M_,_S_S_R',},'FontSize',12,'Location','northwest','FontName','Times New Roman', 'FontWeight', 'bold')
%legend({'T_V_P_D_-_>_L_A_I_|_S_M_,_T_,_S_S_R','Sig_V_P_D_-_>_L_A_I_|_S_M_,_T_,_S_S_R',},'FontSize',12,'Location','northwest','FontName','Times New Roman', 'FontWeight', 'bold')