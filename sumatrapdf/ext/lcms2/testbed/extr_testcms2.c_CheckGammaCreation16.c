
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt16Number ;
typedef int cmsToneCurve ;
typedef int cmsInt32Number ;


 int CheckGammaEstimation (int *,double) ;
 int DbgThread () ;
 int Fail (char*,scalar_t__,scalar_t__) ;
 int * cmsBuildGamma (int ,double) ;
 scalar_t__ cmsEvalToneCurve16 (int ,int *,scalar_t__) ;
 int cmsFreeToneCurve (int ,int *) ;

__attribute__((used)) static
cmsInt32Number CheckGammaCreation16(void)
{
    cmsToneCurve* LinGamma = cmsBuildGamma(DbgThread(), 1.0);
    cmsInt32Number i;
    cmsUInt16Number in, out;

    for (i=0; i < 0xffff; i++) {

        in = (cmsUInt16Number) i;
        out = cmsEvalToneCurve16(DbgThread(), LinGamma, in);
        if (in != out) {
            Fail("(lin gamma): Must be %x, But is %x : ", in, out);
            cmsFreeToneCurve(DbgThread(), LinGamma);
            return 0;
        }
    }

    if (!CheckGammaEstimation(LinGamma, 1.0)) return 0;

    cmsFreeToneCurve(DbgThread(), LinGamma);
    return 1;

}
