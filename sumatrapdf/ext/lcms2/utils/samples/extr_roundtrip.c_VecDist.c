
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt8Number ;


 double fabs (scalar_t__) ;
 double sqrt (double) ;

__attribute__((used)) static
double VecDist(cmsUInt8Number bin[3], cmsUInt8Number bout[3])
{
       double rdist, gdist, bdist;

       rdist = fabs((double) bout[0] - bin[0]);
       gdist = fabs((double) bout[1] - bin[1]);
       bdist = fabs((double) bout[2] - bin[2]);

       return (sqrt((rdist*rdist + gdist*gdist + bdist*bdist)));
}
