
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef size_t cmsUInt32Number ;
typedef int cmsIOHANDLER ;
typedef double cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _cmsWriteUInt32Number (int ,int *,size_t) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;
 int floor (double) ;

__attribute__((used)) static
cmsBool Type_U16Fixed16_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsFloat64Number* Value = (cmsFloat64Number*) Ptr;
    cmsUInt32Number i;

    for (i=0; i < nItems; i++) {

        cmsUInt32Number v = (cmsUInt32Number) floor(Value[i]*65536.0 + 0.5);

        if (!_cmsWriteUInt32Number(ContextID, io, v)) return FALSE;
    }

    return TRUE;

    cmsUNUSED_PARAMETER(self);
}
