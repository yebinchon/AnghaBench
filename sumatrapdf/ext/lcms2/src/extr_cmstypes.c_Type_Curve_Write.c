
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef struct _cms_typehandler_struct* cmsUInt32Number ;
typedef int cmsUInt16Number ;
struct TYPE_4__ {int nSegments; int nEntries; int Table16; TYPE_1__* Segments; } ;
typedef TYPE_2__ cmsToneCurve ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_3__ {int Type; int * Params; } ;


 int FALSE ;
 int TRUE ;
 int _cmsDoubleTo8Fixed8 (int ,int ) ;
 int _cmsWriteUInt16Array (int ,int *,int,int ) ;
 int _cmsWriteUInt16Number (int ,int *,int ) ;
 int _cmsWriteUInt32Number (int ,int *,int) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
cmsBool Type_Curve_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsToneCurve* Curve = (cmsToneCurve*) Ptr;

    if (Curve ->nSegments == 1 && Curve ->Segments[0].Type == 1) {


            cmsUInt16Number SingleGammaFixed = _cmsDoubleTo8Fixed8(ContextID, Curve ->Segments[0].Params[0]);

            if (!_cmsWriteUInt32Number(ContextID, io, 1)) return FALSE;
            if (!_cmsWriteUInt16Number(ContextID, io, SingleGammaFixed)) return FALSE;
            return TRUE;

    }

    if (!_cmsWriteUInt32Number(ContextID, io, Curve ->nEntries)) return FALSE;
    return _cmsWriteUInt16Array(ContextID, io, Curve ->nEntries, Curve ->Table16);

    cmsUNUSED_PARAMETER(nItems);
    cmsUNUSED_PARAMETER(self);
}
