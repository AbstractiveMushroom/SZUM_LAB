
while(1)
   sterowanie = rospublisher('/turtle1/cmd_vel') 
   pozycja=rossubscriber('/turtle1/pose') 
   polozenie=receive(pozycja,1);
   x=polozenie.X;
   y=polozenie.Y;
   theta=polozenie.Theta;
   alfa=atan2(y,x)-theta;
   beta=alfa+theta;
   e=sqrt(x^2+y^2);
   w=sin(alfa)*cos(alfa)+(beta/alfa)*sin(alfa)*cos(alfa)+alfa;
   v=-e*cos(alfa);
   wiadomosc= rosmessage(sterowanie.MessageType)
   wiadomosc.Linear.X=v;
   wiadomosc.Angular.Z=w;
   send(sterowanie,wiadomosc);
   pause(0.1);
end