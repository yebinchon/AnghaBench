
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt16Number ;
typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef float cmsFloat32Number ;


 int DbgThread () ;
 int * cmsBuildTabulatedToneCurve16 (int ,int,scalar_t__*) ;
 float cmsEvalToneCurveFloat (int ,int *,float) ;
 scalar_t__ floor (float) ;

__attribute__((used)) static
cmsToneCurve* CombineGammaFloat(cmsToneCurve* g1, cmsToneCurve* g2)
{
    cmsUInt16Number Tab[256];
    cmsFloat32Number f;
    cmsInt32Number i;

    for (i=0; i < 256; i++) {

        f = (cmsFloat32Number) i / 255.0F;
        f = cmsEvalToneCurveFloat(DbgThread(), g2, cmsEvalToneCurveFloat(DbgThread(), g1, f));

        Tab[i] = (cmsUInt16Number) floor(f * 65535.0 + 0.5);
    }

    return cmsBuildTabulatedToneCurve16(DbgThread(), 256, Tab);
}
