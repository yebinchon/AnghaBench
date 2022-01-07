
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsSEQ ;
typedef int cmsContext ;


 int cmsFreeProfileSequenceDescription (int ,int *) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
void Type_ProfileSequenceId_Free(cmsContext ContextID, struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsFreeProfileSequenceDescription(ContextID, (cmsSEQ*) Ptr);
    return;

    cmsUNUSED_PARAMETER(self);
}
