
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsToneCurve ;
typedef int cmsInt32Number ;
typedef int cmsFloat32Number ;
struct TYPE_3__ {float x0; float x1; int Type; float* Params; int nGridPoints; int* SampledPoints; } ;
typedef TYPE_1__ cmsCurveSegment ;


 int DbgThread () ;
 int StraightLine (int) ;
 int TestCurve (char*,int *,int (*) (int)) ;
 int * cmsBuildSegmentedToneCurve (int ,int,TYPE_1__*) ;
 int cmsFreeToneCurve (int ,int *) ;
 int kNumPoints ;

__attribute__((used)) static
cmsInt32Number CheckFloatSegments(void)
{
    cmsInt32Number ok = 1;
    int i;
    cmsToneCurve *curve;

    cmsFloat32Number y[ kNumPoints];


    cmsCurveSegment Seg[3];


    Seg[0].x0 = -1e22f;
    Seg[0].x1 = 0.1f;
    Seg[0].Type = 6;
    Seg[0].Params[0] = 1.0f;
    Seg[0].Params[1] = 0.9f;
    Seg[0].Params[2] = 0.0f;
    Seg[0].Params[3] = 0.1f;
    Seg[0].Params[4] = 0.0f;


    Seg[1].x0 = 0.1f;
    Seg[1].x1 = 0.9f;
    Seg[1].Type = 0;

    Seg[1].nGridPoints = kNumPoints;
    Seg[1].SampledPoints = y;

    for (i = 0; i < kNumPoints; i++) {
        cmsFloat32Number x = (cmsFloat32Number) (0.1 + ((cmsFloat32Number)i / (kNumPoints-1)) * (0.9 - 0.1));
        y[i] = StraightLine(x);
    }


    Seg[2].x0 = 0.9f;
    Seg[2].x1 = 1e22f;
    Seg[2].Type = 6;

    Seg[2].Params[0] = 1.0f;
    Seg[2].Params[1] = 0.9f;
    Seg[2].Params[2] = 0.0f;
    Seg[2].Params[3] = 0.1f;
    Seg[2].Params[4] = 0.0f;

    curve = cmsBuildSegmentedToneCurve(0, 3, Seg);

    ok = TestCurve( "Float Segmented Curve", curve, StraightLine);

    cmsFreeToneCurve(DbgThread(), curve);

    return ok;
}
