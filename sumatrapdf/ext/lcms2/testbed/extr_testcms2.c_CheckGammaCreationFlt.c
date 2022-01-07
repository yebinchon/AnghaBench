
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef scalar_t__ cmsFloat32Number ;


 int CheckGammaEstimation (int *,double) ;
 int DbgThread () ;
 int Fail (char*,scalar_t__,scalar_t__) ;
 int * cmsBuildGamma (int ,double) ;
 scalar_t__ cmsEvalToneCurveFloat (int ,int *,scalar_t__) ;
 int cmsFreeToneCurve (int ,int *) ;
 int fabs (scalar_t__) ;

__attribute__((used)) static
cmsInt32Number CheckGammaCreationFlt(void)
{
    cmsToneCurve* LinGamma = cmsBuildGamma(DbgThread(), 1.0);
    cmsInt32Number i;
    cmsFloat32Number in, out;

    for (i=0; i < 0xffff; i++) {

        in = (cmsFloat32Number) (i / 65535.0);
        out = cmsEvalToneCurveFloat(DbgThread(), LinGamma, in);
        if (fabs(in - out) > (1/65535.0)) {
            Fail("(lin gamma): Must be %f, But is %f : ", in, out);
            cmsFreeToneCurve(DbgThread(), LinGamma);
            return 0;
        }
    }

    if (!CheckGammaEstimation(LinGamma, 1.0)) return 0;
    cmsFreeToneCurve(DbgThread(), LinGamma);
    return 1;
}
