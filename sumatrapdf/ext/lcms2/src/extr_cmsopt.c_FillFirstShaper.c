
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsS1Fixed14Number ;
typedef double cmsFloat32Number ;
typedef int cmsContext ;


 int DOUBLE_TO_1FIXED14 (double) ;
 double cmsEvalToneCurveFloat (int ,int *,double) ;

__attribute__((used)) static
void FillFirstShaper(cmsContext ContextID, cmsS1Fixed14Number* Table, cmsToneCurve* Curve)
{
    int i;
    cmsFloat32Number R, y;

    for (i=0; i < 256; i++) {

        R = (cmsFloat32Number) (i / 255.0);
        y = cmsEvalToneCurveFloat(ContextID, Curve, R);

        if (y < 131072.0)
            Table[i] = DOUBLE_TO_1FIXED14(y);
        else
            Table[i] = 0x7fffffff;
    }
}
