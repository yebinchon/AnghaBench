
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int cmsUInt16Number ;
typedef int cmsToneCurve ;
typedef double cmsFloat32Number ;
typedef int cmsContext ;
typedef scalar_t__ cmsBool ;


 int FROM_16_TO_8 (int ) ;
 int FROM_8_TO_16 (int ) ;
 int _cmsQuickSaturateWord (double) ;
 double cmsEvalToneCurveFloat (int ,int *,double) ;

__attribute__((used)) static
void FillSecondShaper(cmsContext ContextID, cmsUInt16Number* Table, cmsToneCurve* Curve, cmsBool Is8BitsOutput)
{
    int i;
    cmsFloat32Number R, Val;

    for (i=0; i < 16385; i++) {

        R = (cmsFloat32Number) (i / 16384.0);
        Val = cmsEvalToneCurveFloat(ContextID, Curve, R);

        if (Val < 0)
            Val = 0;

        if (Val > 1.0)
            Val = 1.0;

        if (Is8BitsOutput) {





            cmsUInt16Number w = _cmsQuickSaturateWord(Val * 65535.0);
            cmsUInt8Number b = FROM_16_TO_8(w);

            Table[i] = FROM_8_TO_16(b);
        }
        else Table[i] = _cmsQuickSaturateWord(Val * 65535.0);
    }
}
