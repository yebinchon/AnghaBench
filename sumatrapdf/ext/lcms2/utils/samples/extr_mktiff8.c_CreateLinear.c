
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsToneCurve ;


 int * cmsBuildTabulatedToneCurve16 (int ,int,int*) ;

__attribute__((used)) static
cmsToneCurve* CreateLinear(void)
{
 cmsUInt16Number Linear[2] = { 0, 0xffff };

 return cmsBuildTabulatedToneCurve16(0, 2, Linear);
}
