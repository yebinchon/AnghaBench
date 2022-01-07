
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef int cmsBool ;


 int * Build_sRGBGamma () ;
 int * CombineGamma16 (int *,int *) ;
 int DbgThread () ;
 int cmsFreeToneCurve (int ,int *) ;
 int cmsIsToneCurveLinear (int ,int *) ;
 int * cmsReverseToneCurve (int ,int *) ;

__attribute__((used)) static
cmsInt32Number CheckJoint16Curves_sRGB(void)
{
    cmsToneCurve *Forward, *Reverse, *Result;
    cmsBool rc;

    Forward = Build_sRGBGamma();
    Reverse = cmsReverseToneCurve(DbgThread(), Forward);
    Result = CombineGamma16(Forward, Reverse);
    cmsFreeToneCurve(DbgThread(), Forward); cmsFreeToneCurve(DbgThread(), Reverse);

    rc = cmsIsToneCurveLinear(DbgThread(), Result);
    cmsFreeToneCurve(DbgThread(), Result);

    return rc;
}
