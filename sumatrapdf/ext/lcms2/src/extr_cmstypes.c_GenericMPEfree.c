
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsStage ;
typedef int cmsContext ;


 int cmsStageFree (int ,int *) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
void GenericMPEfree(cmsContext ContextID, struct _cms_typehandler_struct* self, void *Ptr)
{
    cmsStageFree(ContextID, (cmsStage*) Ptr);
    return;

    cmsUNUSED_PARAMETER(self);
}
