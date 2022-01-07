
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef struct _cms_typehandler_struct* cmsUInt32Number ;
typedef int cmsContext ;
typedef int cmsCIExyYTRIPLE ;


 void* _cmsDupMem (int ,void const*,int) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
void* Type_Chromaticity_Dup(cmsContext ContextID, struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return _cmsDupMem(ContextID, Ptr, sizeof(cmsCIExyYTRIPLE));

    cmsUNUSED_PARAMETER(self);
    cmsUNUSED_PARAMETER(n);
}
