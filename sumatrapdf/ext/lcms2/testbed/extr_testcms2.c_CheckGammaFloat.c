
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef double cmsFloat64Number ;
typedef double cmsFloat32Number ;


 int CheckGammaEstimation (int *,double) ;
 int DbgThread () ;
 double MaxErr ;
 int * cmsBuildGamma (int ,double) ;
 double cmsEvalToneCurveFloat (int ,int *,double) ;
 int cmsFreeToneCurve (int ,int *) ;
 double fabs (double) ;
 double pow (double,double) ;
 int printf (char*,double) ;

__attribute__((used)) static
cmsInt32Number CheckGammaFloat(cmsFloat64Number g)
{
    cmsToneCurve* Curve = cmsBuildGamma(DbgThread(), g);
    cmsInt32Number i;
    cmsFloat32Number in, out;
    cmsFloat64Number val, Err;

    MaxErr = 0.0;
    for (i=0; i < 0xffff; i++) {

        in = (cmsFloat32Number) (i / 65535.0);
        out = cmsEvalToneCurveFloat(DbgThread(), Curve, in);
        val = pow((cmsFloat64Number) in, g);

        Err = fabs( val - out);
        if (Err > MaxErr) MaxErr = Err;
    }

    if (MaxErr > 0) printf("|Err|<%lf ", MaxErr * 65535.0);

    if (!CheckGammaEstimation(Curve, g)) return 0;

    cmsFreeToneCurve(DbgThread(), Curve);
    return 1;
}
