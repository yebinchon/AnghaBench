
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsMLU ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;


 int ReadCountAndSting (int ,struct _cms_typehandler_struct*,int *,int *,int*,char*) ;
 int * cmsMLUalloc (int ,int) ;
 int cmsMLUfree (int ,int *) ;

__attribute__((used)) static
void *Type_CrdInfo_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsMLU* mlu = cmsMLUalloc(ContextID, 5);

    *nItems = 0;
    if (!ReadCountAndSting(ContextID, self, io, mlu, &SizeOfTag, "nm")) goto Error;
    if (!ReadCountAndSting(ContextID, self, io, mlu, &SizeOfTag, "#0")) goto Error;
    if (!ReadCountAndSting(ContextID, self, io, mlu, &SizeOfTag, "#1")) goto Error;
    if (!ReadCountAndSting(ContextID, self, io, mlu, &SizeOfTag, "#2")) goto Error;
    if (!ReadCountAndSting(ContextID, self, io, mlu, &SizeOfTag, "#3")) goto Error;

    *nItems = 1;
    return (void*) mlu;

Error:
    cmsMLUfree(ContextID, mlu);
    return ((void*)0);

}
