
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef struct _cms_typehandler_struct* cmsUInt32Number ;
typedef int cmsSEQ ;
typedef int cmsContext ;


 scalar_t__ cmsDupProfileSequenceDescription (int ,int *) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
void* Type_ProfileSequenceId_Dup(cmsContext ContextID, struct _cms_typehandler_struct* self, const void* Ptr, cmsUInt32Number n)
{
    return (void*) cmsDupProfileSequenceDescription(ContextID, (cmsSEQ*) Ptr);

    cmsUNUSED_PARAMETER(n);
    cmsUNUSED_PARAMETER(self);
}
