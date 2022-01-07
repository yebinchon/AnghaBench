
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef int cmsBool ;


 int DbgThread () ;
 int Fail (char*) ;
 int * cmsBuildGamma (int ,double) ;
 int cmsFreeToneCurve (int ,int *) ;
 int cmsIsToneCurveLinear (int ,int *) ;
 int * cmsJoinToneCurve (int ,int *,int *,int) ;

__attribute__((used)) static
cmsInt32Number CheckJointCurves(void)
{
    cmsToneCurve *Forward, *Reverse, *Result;
    cmsBool rc;

    Forward = cmsBuildGamma(DbgThread(), 3.0);
    Reverse = cmsBuildGamma(DbgThread(), 3.0);

    Result = cmsJoinToneCurve(DbgThread(), Forward, Reverse, 256);

    cmsFreeToneCurve(DbgThread(), Forward); cmsFreeToneCurve(DbgThread(), Reverse);

    rc = cmsIsToneCurveLinear(DbgThread(), Result);
    cmsFreeToneCurve(DbgThread(), Result);

    if (!rc)
        Fail("Joining same curve twice does not result in a linear ramp");

    return rc;
}
