
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt16Number ;
typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef double cmsFloat64Number ;
typedef float cmsFloat32Number ;


 int DbgThread () ;
 double Rec709 (double) ;
 int * cmsBuildParametricToneCurve (int *,int,double*) ;
 double cmsEvalToneCurveFloat (int ,int *,float) ;
 int cmsFreeToneCurve (int ,int *) ;
 int floor (double) ;
 double pow (double,double) ;

__attribute__((used)) static
cmsInt32Number CheckParametricRec709(void)
{
    cmsFloat64Number params[7];
    cmsToneCurve* t;
    int i;

    params[0] = 0.45;
    params[1] = pow(1.099, 1.0 / 0.45);
    params[2] = 0.0;
    params[3] = 4.5;
    params[4] = 0.018;
    params[5] = -0.099;
    params[6] = 0.0;

    t = cmsBuildParametricToneCurve (((void*)0), 5, params);


    for (i=0; i < 256; i++)
    {
        cmsFloat32Number n = (cmsFloat32Number) i / 255.0F;
        cmsUInt16Number f1 = (cmsUInt16Number) floor(255.0 * cmsEvalToneCurveFloat(DbgThread(), t, n) + 0.5);
        cmsUInt16Number f2 = (cmsUInt16Number) floor(255.0*Rec709((double) i / 255.0) + 0.5);

        if (f1 != f2)
        {
            cmsFreeToneCurve(DbgThread(), t);
            return 0;
        }
    }

    cmsFreeToneCurve(DbgThread(), t);
    return 1;
}
