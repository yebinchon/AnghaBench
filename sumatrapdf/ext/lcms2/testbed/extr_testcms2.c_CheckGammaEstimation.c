
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef scalar_t__ cmsFloat64Number ;


 int DbgThread () ;
 int SubTest (char*) ;
 scalar_t__ cmsEstimateGamma (int ,int *,double) ;
 double fabs (scalar_t__) ;

__attribute__((used)) static
cmsInt32Number CheckGammaEstimation(cmsToneCurve* c, cmsFloat64Number g)
{
    cmsFloat64Number est = cmsEstimateGamma(DbgThread(), c, 0.001);

    SubTest("Gamma estimation");
    if (fabs(est - g) > 0.001) return 0;
    return 1;
}
