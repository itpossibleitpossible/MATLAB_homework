clc;clear all;
figure('name','�϶�һ���������������ϵ');%���ñ�������
s1=[0:0.01:2*pi];
hold on;
axis equal;%��������ϵ
axis off   % ����Axes
r1=10;%�����������ƽ������
r2=3;%�϶�һ�ŵ�������ƽ������
w1=1;%����������ת���ٶ�
w2=12%�����϶�һ����������ת���ٶ�
t=0;%��ʼʱ��Ϊ0
pausetime=.002;%������ͣʱ��
sita1=0;sita2=0;%���ÿ�ʼ���Ƕ���ˮƽ����
set(gcf,'doublebuffer','on') %��������
plot(-20,18,'color','r','marker','.','markersize',40);
text(-17,18,'����');%�Ե�����б�ʶ
p1=plot(-20,16,'color','b','marker','.','markersize',20);
text(-17,16,'����');%���������б�ʶ
p1=plot(-20,14,'color','w','marker','.','markersize',13);
text(-17,14,'�϶�һ��');%���϶�һ�Ž��б�ʶ
plot(0,0,'color','r','marker','.','markersize',60);%������
plot(r1*cos(s1),r1*sin(s1));%��������ת���
set(gca,'xlim',[-20 20],'ylim',[-20 20]);
p1=plot(r1*cos(sita1),r1*sin(sita1),'color','b','marker','.','markersize',30);%��������ʼλ��
l1=plot(r1*cos(sita1)+r2*cos(s1),r1*sin(sita1)+r2*sin(s1));%���϶�һ����������ת���
p2x=r1*cos(sita1)+r2*cos(sita2);p2y=r1*sin(sita1)+r2*sin(sita2);
p2=plot(p2x,p2y,'w','marker','.','markersize',20);%���϶�һ�ŵĳ�ʼλ��
orbit=line('xdata',p2x,'ydata',p2y,'color','r');%���϶�һ�ŵ��˶��켣
while 1
set(p1,'xdata',r1*cos(sita1),'ydata',r1*sin(sita1));%�����������˶�����
set(l1,'xdata',r1*cos(sita1)+r2*cos(s1),'ydata',r1*sin(sita1)+r2*sin(s1));%�����϶�һ���������Ĺ�ת������˶�����
ptempx=r1*cos(sita1)+r2*cos(sita2);
ptempy=r1*sin(sita1)+r2*sin(sita2);
set(p2,'xdata',ptempx,'ydata',ptempy);%�����϶�һ�ŵ��˶�����
p2x=[p2x ptempx];p2y=[p2y ptempy];
set(orbit,'xdata',p2x,'ydata',p2y);%�����϶�һ���˶��켣����ʾ����
sita1=sita1+w1*pausetime;%������Ե���ת���ĽǶ�
sita2=sita2+w2*pausetime;%�϶�һ���������ת���ĽǶ�
pause(pausetime);  %��ͣһ��
drawnow
end