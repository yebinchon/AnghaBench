
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;


 scalar_t__ BlackPointCompensation ;
 int FatalError (char*,int) ;
 int PrecalcMode ;
 int cmsFLAGS_BLACKPOINTCOMPENSATION ;
 int cmsFLAGS_HIGHRESPRECALC ;
 int cmsFLAGS_LOWRESPRECALC ;
 int cmsFLAGS_NOOPTIMIZE ;

__attribute__((used)) static
cmsUInt32Number GetFlags()
{
 cmsUInt32Number dwFlags = 0;

 switch (PrecalcMode) {

 case 0: dwFlags = cmsFLAGS_NOOPTIMIZE; break;
 case 2: dwFlags = cmsFLAGS_HIGHRESPRECALC; break;
 case 3: dwFlags = cmsFLAGS_LOWRESPRECALC; break;
 case 1: break;

 default: FatalError("Unknown precalculation mode '%d'", PrecalcMode);
 }

 if (BlackPointCompensation)
  dwFlags |= cmsFLAGS_BLACKPOINTCOMPENSATION;

 return dwFlags;
}
