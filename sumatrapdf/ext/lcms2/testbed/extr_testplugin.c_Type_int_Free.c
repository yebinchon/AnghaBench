
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsContext ;


 int _cmsFree (int ,void*) ;

void Type_int_Free(cmsContext ContextID, struct _cms_typehandler_struct* self,
                   void* Ptr)
{
    _cmsFree(ContextID, Ptr);
}
