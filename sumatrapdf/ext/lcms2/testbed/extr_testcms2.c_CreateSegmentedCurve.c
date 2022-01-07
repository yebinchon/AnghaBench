
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsToneCurve ;
typedef int cmsFloat32Number ;
struct TYPE_3__ {int Type; int* Params; float x0; int x1; int nGridPoints; int* SampledPoints; } ;
typedef TYPE_1__ cmsCurveSegment ;


 int DbgThread () ;
 int * cmsBuildSegmentedToneCurve (int ,int,TYPE_1__*) ;

__attribute__((used)) static
cmsToneCurve *CreateSegmentedCurve(void)
{
    cmsCurveSegment Seg[3];
    cmsFloat32Number Sampled[2] = { 0, 1};

    Seg[0].Type = 6;
    Seg[0].Params[0] = 1;
    Seg[0].Params[1] = 0;
    Seg[0].Params[2] = 0;
    Seg[0].Params[3] = 0;
    Seg[0].x0 = -1E22F;
    Seg[0].x1 = 0;

    Seg[1].Type = 0;
    Seg[1].nGridPoints = 2;
    Seg[1].SampledPoints = Sampled;
    Seg[1].x0 = 0;
    Seg[1].x1 = 1;

    Seg[2].Type = 6;
    Seg[2].Params[0] = 1;
    Seg[2].Params[1] = 0;
    Seg[2].Params[2] = 0;
    Seg[2].Params[3] = 0;
    Seg[2].x0 = 1;
    Seg[2].x1 = 1E22F;

    return cmsBuildSegmentedToneCurve(DbgThread(), 3, Seg);
}
