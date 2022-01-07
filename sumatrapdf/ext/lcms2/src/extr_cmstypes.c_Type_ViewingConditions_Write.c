
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef struct _cms_typehandler_struct* cmsUInt32Number ;
typedef int cmsIOHANDLER ;
struct TYPE_2__ {int IlluminantType; int SurroundXYZ; int IlluminantXYZ; } ;
typedef TYPE_1__ cmsICCViewingConditions ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _cmsWriteUInt32Number (int ,int *,int ) ;
 int _cmsWriteXYZNumber (int ,int *,int *) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
cmsBool Type_ViewingConditions_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsICCViewingConditions* sc = (cmsICCViewingConditions* ) Ptr;

    if (!_cmsWriteXYZNumber(ContextID, io, &sc ->IlluminantXYZ)) return FALSE;
    if (!_cmsWriteXYZNumber(ContextID, io, &sc ->SurroundXYZ)) return FALSE;
    if (!_cmsWriteUInt32Number(ContextID, io, sc ->IlluminantType)) return FALSE;

    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
    cmsUNUSED_PARAMETER(self);
}
