
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef int cmsFloat32Number ;


 int DbgThread () ;
 int StraightLine (int) ;
 int TestCurve (char*,int *,int (*) (int)) ;
 int * cmsBuildTabulatedToneCurveFloat (int *,int,int*) ;
 int cmsFreeToneCurve (int ,int *) ;
 int kNumPoints ;

__attribute__((used)) static
cmsInt32Number CheckFloatSamples(void)
{
    cmsFloat32Number y[kNumPoints];
    int i;
    cmsToneCurve *curve;
    cmsInt32Number ok;

    for (i = 0; i < kNumPoints; i++) {
        cmsFloat32Number x = (cmsFloat32Number)i / (kNumPoints-1);

        y[i] = StraightLine(x);
    }

    curve = cmsBuildTabulatedToneCurveFloat(((void*)0), kNumPoints, y);
    ok = TestCurve( "Float Samples", curve, StraightLine);
    cmsFreeToneCurve(DbgThread(), curve);

    return ok;
}
