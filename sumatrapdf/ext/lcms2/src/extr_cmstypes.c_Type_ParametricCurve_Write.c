
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef struct _cms_typehandler_struct* cmsUInt32Number ;
typedef int cmsUInt16Number ;
struct TYPE_4__ {int nSegments; TYPE_1__* Segments; } ;
typedef TYPE_2__ cmsToneCurve ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_3__ {int Type; int * Params; } ;


 int FALSE ;
 int TRUE ;
 int _cmsWrite15Fixed16Number (int ,int *,int ) ;
 int _cmsWriteUInt16Number (int ,int *,int ) ;
 int cmsERROR_UNKNOWN_EXTENSION ;
 int cmsSignalError (int ,int ,char*) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
cmsBool Type_ParametricCurve_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsToneCurve* Curve = (cmsToneCurve*) Ptr;
    int i, nParams, typen;
    static const int ParamsByType[] = { 0, 1, 3, 4, 5, 7 };
    cmsUNUSED_PARAMETER(self);

    typen = Curve -> Segments[0].Type;

    if (Curve ->nSegments > 1 || typen < 1) {

        cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Multisegment or Inverted parametric curves cannot be written");
        return FALSE;
    }

    if (typen > 5) {
        cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unsupported parametric curve");
        return FALSE;
    }

    nParams = ParamsByType[typen];

    if (!_cmsWriteUInt16Number(ContextID, io, (cmsUInt16Number) (Curve ->Segments[0].Type - 1))) return FALSE;
    if (!_cmsWriteUInt16Number(ContextID, io, 0)) return FALSE;

    for (i=0; i < nParams; i++) {

        if (!_cmsWrite15Fixed16Number(ContextID, io, Curve -> Segments[0].Params[i])) return FALSE;
    }

    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
}
