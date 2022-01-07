
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsContext ;


 void* _cmsDupMem (int ,void const*,int) ;

__attribute__((used)) static
void* Type_int_Dup(cmsContext ContextID, struct _cms_typehandler_struct* self,
                   const void *Ptr, cmsUInt32Number n)
{
    return _cmsDupMem(ContextID, Ptr, n * sizeof(cmsUInt32Number));
}
