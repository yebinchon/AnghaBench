
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* dblfnptr ) (int,int const*) ;
typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef int cmsFloat64Number ;
typedef int cmsFloat32Number ;
typedef int cmsBool ;


 int DbgThread () ;
 int FALSE ;
 int FIXED_PRECISION_15_16 ;
 int IsGoodVal (char const*,int,int,int ) ;
 int TRUE ;
 int * cmsBuildParametricToneCurve (int ,int,int const*) ;
 int cmsEvalToneCurveFloat (int ,int *,int) ;
 int cmsFreeToneCurve (int ,int *) ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static
cmsBool CheckSingleParametric(const char* Name, dblfnptr fn, cmsInt32Number Type, const cmsFloat64Number Params[])
{
    cmsInt32Number i;
    cmsToneCurve* tc;
    cmsToneCurve* tc_1;
    char InverseText[256];

    tc = cmsBuildParametricToneCurve(DbgThread(), Type, Params);
    tc_1 = cmsBuildParametricToneCurve(DbgThread(), -Type, Params);

    for (i=0; i <= 1000; i++) {

        cmsFloat32Number x = (cmsFloat32Number) i / 1000;
        cmsFloat32Number y_fn, y_param, x_param, y_param2;

        y_fn = fn(x, Params);
        y_param = cmsEvalToneCurveFloat(DbgThread(), tc, x);
        x_param = cmsEvalToneCurveFloat(DbgThread(), tc_1, y_param);

        y_param2 = fn(x_param, Params);

        if (!IsGoodVal(Name, y_fn, y_param, FIXED_PRECISION_15_16))
            goto Error;

        sprintf(InverseText, "Inverse %s", Name);
        if (!IsGoodVal(InverseText, y_fn, y_param2, FIXED_PRECISION_15_16))
            goto Error;
    }

    cmsFreeToneCurve(DbgThread(), tc);
    cmsFreeToneCurve(DbgThread(), tc_1);
    return TRUE;

Error:
    cmsFreeToneCurve(DbgThread(), tc);
    cmsFreeToneCurve(DbgThread(), tc_1);
    return FALSE;
}
