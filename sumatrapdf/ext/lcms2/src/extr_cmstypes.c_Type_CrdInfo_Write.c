
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsMLU ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int WriteCountAndSting (int ,struct _cms_typehandler_struct*,int *,int *,char*) ;
 int cmsUNUSED_PARAMETER (int ) ;

__attribute__((used)) static
cmsBool Type_CrdInfo_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{

    cmsMLU* mlu = (cmsMLU*) Ptr;

    if (!WriteCountAndSting(ContextID, self, io, mlu, "nm")) goto Error;
    if (!WriteCountAndSting(ContextID, self, io, mlu, "#0")) goto Error;
    if (!WriteCountAndSting(ContextID, self, io, mlu, "#1")) goto Error;
    if (!WriteCountAndSting(ContextID, self, io, mlu, "#2")) goto Error;
    if (!WriteCountAndSting(ContextID, self, io, mlu, "#3")) goto Error;

    return TRUE;

Error:
    return FALSE;

    cmsUNUSED_PARAMETER(nItems);
}
