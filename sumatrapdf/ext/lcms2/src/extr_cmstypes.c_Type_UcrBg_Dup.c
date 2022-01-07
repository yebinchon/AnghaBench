
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
struct TYPE_2__ {int Desc; void* Ucr; void* Bg; } ;
typedef TYPE_1__ cmsUcrBg ;
typedef struct _cms_typehandler_struct* cmsUInt32Number ;
typedef int cmsContext ;


 scalar_t__ _cmsMallocZero (int ,int) ;
 void* cmsDupToneCurve (int ,void*) ;
 int cmsMLUdup (int ,int ) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
void* Type_UcrBg_Dup(cmsContext ContextID, struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    cmsUcrBg* Src = (cmsUcrBg*) Ptr;
    cmsUcrBg* NewUcrBg = (cmsUcrBg*) _cmsMallocZero(ContextID, sizeof(cmsUcrBg));
    cmsUNUSED_PARAMETER(self);

    if (NewUcrBg == ((void*)0)) return ((void*)0);

    NewUcrBg ->Bg = cmsDupToneCurve(ContextID, Src ->Bg);
    NewUcrBg ->Ucr = cmsDupToneCurve(ContextID, Src ->Ucr);
    NewUcrBg ->Desc = cmsMLUdup(ContextID, Src ->Desc);

    return (void*) NewUcrBg;

    cmsUNUSED_PARAMETER(n);
}
