function p=edsv(r,u,v)
% edsv.m  2-20-96
%
%  Spatial Error Analysis ToolBox Version 1.0,   October 5, 1997
%  Copyright 1997-1998 by David Y. Hsu  All rights reserved.
%  dhsu@littongcs.com
%
% Ellipsoidal PDF, uncorrelated, spherical volume
%      u >= v

if r<0 | u < 0  | v > 1  | u < v
   error('check input arguments in edsv.m')
end

mlim =0.01;       
                  
if u<mlim         
  u=0; v=0;       
end               
                  
if v<mlim         
  v=0;       
end               
                  
if (u==0 & v==0)  
  p=nf2(r)  ;     
elseif (u==1 & v==0)  
  p=cf2(r)  ;     
elseif (u<1 & v==0)  
  p=gf2(r,u);     
elseif (u==1 & v==1)  
  p=sf2(r)  ;     
else              
  p=tf2(r,u,v);
end               
