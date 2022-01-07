
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef int cmsFloat32Number ;
typedef int (* Function ) (int) ;


 int DbgThread () ;
 int FLOAT_PRECISSION ;
 int IsGoodVal (char const*,int,int,int ) ;
 int cmsEvalToneCurveFloat (int ,int *,int) ;
 int kNumPoints ;

__attribute__((used)) static cmsInt32Number TestCurve( const char* label, cmsToneCurve* curve, Function fn)
{
    cmsInt32Number ok = 1;
    int i;
    for (i = 0; i < kNumPoints*3; i++) {

        cmsFloat32Number x = (cmsFloat32Number)i / (kNumPoints*3 - 1);
        cmsFloat32Number expectedY = fn(x);
        cmsFloat32Number out = cmsEvalToneCurveFloat(DbgThread(), curve, x);

        if (!IsGoodVal(label, expectedY, out, FLOAT_PRECISSION)) {
            ok = 0;
        }
    }
    return ok;
}
