
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt16Number ;
typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef double cmsFloat64Number ;
typedef scalar_t__ cmsFloat32Number ;


 int CheckGammaEstimation (int *,double) ;
 int DbgThread () ;
 double MaxErr ;
 int * cmsBuildTabulatedToneCurve16 (int ,int,scalar_t__*) ;
 scalar_t__ cmsEvalToneCurveFloat (int ,int *,scalar_t__) ;
 int cmsFreeToneCurve (int ,int *) ;
 double fabs (scalar_t__) ;
 scalar_t__ floor (double) ;
 double pow (scalar_t__,double) ;
 int printf (char*,double) ;

__attribute__((used)) static
cmsInt32Number CheckGammaWordTable(cmsFloat64Number g)
{
    cmsUInt16Number Values[1025];
    cmsToneCurve* Curve;
    cmsInt32Number i;
    cmsFloat32Number in, out;
    cmsFloat64Number val, Err;

    for (i=0; i <= 1024; i++) {

        in = (cmsFloat32Number) (i / 1024.0);
        Values[i] = (cmsUInt16Number) floor(pow(in, g) * 65535.0 + 0.5);
    }

    Curve = cmsBuildTabulatedToneCurve16(DbgThread(), 1025, Values);

    MaxErr = 0.0;
    for (i=0; i <= 0xffff; i++) {

        in = (cmsFloat32Number) (i / 65535.0);
        out = cmsEvalToneCurveFloat(DbgThread(), Curve, in);
        val = pow(in, g);

        Err = fabs(val - out);
        if (Err > MaxErr) MaxErr = Err;
    }

    if (MaxErr > 0) printf("|Err|<%lf ", MaxErr * 65535.0);

    if (!CheckGammaEstimation(Curve, g)) return 0;

    cmsFreeToneCurve(DbgThread(), Curve);
    return 1;
}
