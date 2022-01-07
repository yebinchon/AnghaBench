
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _cmsWriteUInt16Number (int ,int *,int) ;

__attribute__((used)) static
cmsBool Type_negate_Write(cmsContext ContextID, struct _cms_typehandler_struct* self,
                        cmsIOHANDLER* io,
                        void* Ptr, cmsUInt32Number nItems)
{

    if (!_cmsWriteUInt16Number(ContextID, io, 3)) return FALSE;
    return TRUE;
}
