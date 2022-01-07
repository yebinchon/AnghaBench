
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef struct _cms_typehandler_struct* cmsUInt32Number ;
struct TYPE_2__ {scalar_t__ len; } ;
typedef TYPE_1__ cmsICCData ;
typedef int cmsContext ;


 void* _cmsDupMem (int ,void const*,scalar_t__) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
void* Type_Data_Dup(cmsContext ContextID, struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    cmsICCData* BinData = (cmsICCData*) Ptr;

    return _cmsDupMem(ContextID, Ptr, sizeof(cmsICCData) + BinData ->len - 1);

    cmsUNUSED_PARAMETER(self);
    cmsUNUSED_PARAMETER(n);
}
