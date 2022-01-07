
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
struct TYPE_7__ {TYPE_1__* Segments; } ;
typedef TYPE_2__ cmsToneCurve ;
typedef int cmsIOHANDLER ;
typedef double cmsFloat32Number ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_8__ {scalar_t__ Max; scalar_t__ Min; scalar_t__ Gamma; } ;
typedef TYPE_3__ _cmsVCGTGAMMA ;
struct TYPE_6__ {scalar_t__* Params; } ;


 int FALSE ;
 int TRUE ;
 int _cmsQuickSaturateWord (double) ;
 int _cmsWrite15Fixed16Number (int ,int *,scalar_t__) ;
 int _cmsWriteUInt16Number (int ,int *,int) ;
 int _cmsWriteUInt32Number (int ,int *,int ) ;
 double cmsEvalToneCurveFloat (int ,TYPE_2__*,double) ;
 int cmsGetToneCurveParametricType (int ,TYPE_2__*) ;
 int cmsUNUSED_PARAMETER (int) ;
 int cmsVideoCardGammaFormulaType ;
 int cmsVideoCardGammaTableType ;
 scalar_t__ pow (scalar_t__,scalar_t__) ;

__attribute__((used)) static
cmsBool Type_vcgt_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsToneCurve** Curves = (cmsToneCurve**) Ptr;
    cmsUInt32Number i, j;

    if (cmsGetToneCurveParametricType(ContextID, Curves[0]) == 5 &&
        cmsGetToneCurveParametricType(ContextID, Curves[1]) == 5 &&
        cmsGetToneCurveParametricType(ContextID, Curves[2]) == 5) {

            if (!_cmsWriteUInt32Number(ContextID, io, cmsVideoCardGammaFormulaType)) return FALSE;


            for (i=0; i < 3; i++) {

                _cmsVCGTGAMMA v;

                v.Gamma = Curves[i] ->Segments[0].Params[0];
                v.Min = Curves[i] ->Segments[0].Params[5];
                v.Max = pow(Curves[i] ->Segments[0].Params[1], v.Gamma) + v.Min;

                if (!_cmsWrite15Fixed16Number(ContextID, io, v.Gamma)) return FALSE;
                if (!_cmsWrite15Fixed16Number(ContextID, io, v.Min)) return FALSE;
                if (!_cmsWrite15Fixed16Number(ContextID, io, v.Max)) return FALSE;
            }
    }

    else {


        if (!_cmsWriteUInt32Number(ContextID, io, cmsVideoCardGammaTableType)) return FALSE;
        if (!_cmsWriteUInt16Number(ContextID, io, 3)) return FALSE;
        if (!_cmsWriteUInt16Number(ContextID, io, 256)) return FALSE;
        if (!_cmsWriteUInt16Number(ContextID, io, 2)) return FALSE;

        for (i=0; i < 3; i++) {
            for (j=0; j < 256; j++) {

                cmsFloat32Number v = cmsEvalToneCurveFloat(ContextID, Curves[i], (cmsFloat32Number) (j / 255.0));
                cmsUInt16Number n = _cmsQuickSaturateWord(v * 65535.0);

                if (!_cmsWriteUInt16Number(ContextID, io, n)) return FALSE;
            }
        }
    }

    return TRUE;

    cmsUNUSED_PARAMETER(self);
    cmsUNUSED_PARAMETER(nItems);
}
