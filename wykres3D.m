clear all
close all
N1= 10;
N2= 10 ;

Moc=[]; Frecyklu=[]; Twyrury=[];Twyrecyklu=[];Twerecyklu=[];Frury=[];

Dane=importdata('Data.txt');
tryb=Dane(1,1);
if tryb==0
a=Dane(:,2);
b=Dane(:,3);
c=Dane(:,4);
d=Dane(:,5);
e=Dane(:,6);

for i=1:N2
    p=(i-1)*N1+1; k=i*N1;
    Twyrury=[Twyrury; a(p:k)'];
	Twerecyklu=[Twerecyklu; b(p:k)'];
    Twyrecyklu=[Twyrecyklu; c(p:k)'];
	Frury=[Frury; d(p:k)'];
    Moc=[Moc; e(p:k)'];
end


Moc=Moc./3500;
end

if tryb==1
a=Dane(:,2);
b=Dane(:,3);
c=Dane(:,4);
d=Dane(:,5);
e=Dane(:,6);

for i=1:N2
    p=(i-1)*N1+1; k=i*N1;
    Twyrury=[Twyrury; a(p:k)'];
	Twerecyklu=[Twerecyklu; b(p:k)'];
    Twyrecyklu=[Twyrecyklu; c(p:k)'];
	Frecyklu=[Frecyklu; d(p:k)'];
    Moc=[Moc; e(p:k)'];
end
Moc=Moc./35;
end

if tryb==2
a=Dane(:,2);
b=Dane(:,3);
c=Dane(:,4);
d=Dane(:,5);
e=Dane(:,6);

for i=1:N2
    p=(i-1)*N1+1; k=i*N1;
    Twyrury=[Twyrury; a(p:k)'];
	Twerecyklu=[Twerecyklu; b(p:k)'];
    Twyrecyklu=[Twyrecyklu; c(p:k)'];
	Frury=[Frury; e(p:k)'];
    Frecyklu=[Frecyklu; d(p:k)'];
end



end


if tryb==2
FT=Frecyklu.*Twyrecyklu;
figure
wykres=mesh(Frury,Frecyklu,Twyrury);
hold on
set(wykres,'FaceColor','flat','EdgeColor','k');
xlabel('Fc L/min');
ylabel('F [L/min]');
title('Tcou st.C');

figure
wykres=mesh(Frury,Frecyklu,Twerecyklu);
hold on
set(wykres,'FaceColor','flat','EdgeColor','k');
xlabel('Fc  L/min');
ylabel('F L/min');
title('Thin st.C');

figure
wykres=mesh(Frury,Frecyklu,Twyrecyklu);
hold on
set(wykres,'FaceColor','flat','EdgeColor','k');
xlabel('Fc L/min');
ylabel('F L/min');
title('Thou st.C');

figure
wykres=mesh(Frury,Frecyklu,FT);
hold on
set(wykres,'FaceColor','flat','EdgeColor','k');
xlabel('Fc L/min');
ylabel('F L/min');
title('F*Thou L*st.C/min');

end

if tryb==1
FT=Frecyklu.*Twyrecyklu;
figure
wykres=mesh(Moc,Frecyklu,Twyrury);
hold on
set(wykres,'FaceColor','flat','EdgeColor','k');
xlabel('Ph');
ylabel('Fx [L/min]');
title('Tcou st.C');

figure
wykres=mesh(Moc,Frecyklu,Twerecyklu);
hold on
set(wykres,'FaceColor','flat','EdgeColor','k');
xlabel('Ph');
ylabel('F L/min');
title('Thin st.C');

figure
wykres=mesh(Moc,Frecyklu,Twyrecyklu);
hold on
set(wykres,'FaceColor','flat','EdgeColor','k');
xlabel('Ph');
ylabel('F L/min');
title('Thou st.C');

figure
wykres=mesh(Moc,Frecyklu,FT);
hold on
set(wykres,'FaceColor','flat','EdgeColor','k');
xlabel('Ph');
ylabel('F L/min');
title('F*Thou L*st.C/min');

end


if tryb==0

figure
wykres=mesh(Moc,Frury,Twyrury);
hold on
set(wykres,'FaceColor','flat','EdgeColor','k');
xlabel('Ph');
ylabel('Fc [L/min]');
title('Tcou st.C');

figure
wykres=mesh(Moc,Frury,Twerecyklu);
hold on
set(wykres,'FaceColor','flat','EdgeColor','k');
xlabel('Ph');
ylabel('Fc  L/min');
title('Thin st.C');

figure
wykres=mesh(Moc,Frury,Twyrecyklu);
hold on
set(wykres,'FaceColor','flat','EdgeColor','k');
xlabel('Ph');
ylabel('Fc  L/min');
title('Thou st.C');


end