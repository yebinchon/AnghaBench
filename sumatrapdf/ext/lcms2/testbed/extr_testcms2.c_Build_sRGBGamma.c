
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef double cmsFloat64Number ;


 int DbgThread () ;
 int * cmsBuildParametricToneCurve (int ,int,double*) ;

__attribute__((used)) static
cmsToneCurve* Build_sRGBGamma(void)
{
    cmsFloat64Number Parameters[5];

    Parameters[0] = 2.4;
    Parameters[1] = 1. / 1.055;
    Parameters[2] = 0.055 / 1.055;
    Parameters[3] = 1. / 12.92;
    Parameters[4] = 0.04045;

    return cmsBuildParametricToneCurve(DbgThread(), 4, Parameters);
}
