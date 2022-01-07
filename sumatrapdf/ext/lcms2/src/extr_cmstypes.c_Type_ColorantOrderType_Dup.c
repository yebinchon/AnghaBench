
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt8Number ;
typedef struct _cms_typehandler_struct* cmsUInt32Number ;
typedef int cmsContext ;


 void* _cmsDupMem (int ,void const*,int) ;
 int cmsMAXCHANNELS ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
void* Type_ColorantOrderType_Dup(cmsContext ContextID, struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    return _cmsDupMem(ContextID, Ptr, cmsMAXCHANNELS * sizeof(cmsUInt8Number));

    cmsUNUSED_PARAMETER(self);
    cmsUNUSED_PARAMETER(n);
}
