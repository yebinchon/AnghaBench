
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef struct _cms_typehandler_struct* cmsUInt32Number ;
typedef int cmsNAMEDCOLORLIST ;
typedef int cmsContext ;


 scalar_t__ cmsDupNamedColorList (int ,int *) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
void* Type_ColorantTable_Dup(cmsContext ContextID, struct _cms_typehandler_struct* self, const void* Ptr, cmsUInt32Number n)
{
    cmsNAMEDCOLORLIST* nc = (cmsNAMEDCOLORLIST*) Ptr;
    return (void*) cmsDupNamedColorList(ContextID, nc);

    cmsUNUSED_PARAMETER(n);
    cmsUNUSED_PARAMETER(self);
}
