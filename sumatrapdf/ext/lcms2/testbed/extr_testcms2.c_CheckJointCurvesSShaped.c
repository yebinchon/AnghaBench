
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef double cmsFloat64Number ;


 int DbgThread () ;
 int * cmsBuildParametricToneCurve (int ,int,double*) ;
 int cmsFreeToneCurve (int ,int *) ;
 int cmsIsToneCurveLinear (int ,int *) ;
 int * cmsJoinToneCurve (int ,int *,int *,int) ;
 int * cmsReverseToneCurve (int ,int *) ;

__attribute__((used)) static
cmsInt32Number CheckJointCurvesSShaped(void)
{
    cmsFloat64Number p = 3.2;
    cmsToneCurve *Forward, *Reverse, *Result;
    cmsInt32Number rc;

    Forward = cmsBuildParametricToneCurve(DbgThread(), 108, &p);
    Reverse = cmsReverseToneCurve(DbgThread(), Forward);
    Result = cmsJoinToneCurve(DbgThread(), Forward, Forward, 4096);

    cmsFreeToneCurve(DbgThread(), Forward);
    cmsFreeToneCurve(DbgThread(), Reverse);

    rc = cmsIsToneCurveLinear(DbgThread(), Result);
    cmsFreeToneCurve(DbgThread(), Result);
    return rc;
}
