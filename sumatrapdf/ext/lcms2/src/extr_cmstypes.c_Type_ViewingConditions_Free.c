
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsContext ;


 int _cmsFree (int ,void*) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
void Type_ViewingConditions_Free(cmsContext ContextID, struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsUNUSED_PARAMETER(self);
    _cmsFree(ContextID, Ptr);
}
