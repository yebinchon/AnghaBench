
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ Desc; scalar_t__ Bg; scalar_t__ Ucr; } ;
typedef TYPE_1__ cmsUcrBg ;
typedef int cmsContext ;


 int _cmsFree (int ,void*) ;
 int cmsFreeToneCurve (int ,scalar_t__) ;
 int cmsMLUfree (int ,scalar_t__) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
void Type_UcrBg_Free(cmsContext ContextID, struct _cms_typehandler_struct* self, void *Ptr)
{
   cmsUcrBg* Src = (cmsUcrBg*) Ptr;
   cmsUNUSED_PARAMETER(self);

   if (Src ->Ucr) cmsFreeToneCurve(ContextID, Src ->Ucr);
   if (Src ->Bg) cmsFreeToneCurve(ContextID, Src ->Bg);
   if (Src ->Desc) cmsMLUfree(ContextID, Src ->Desc);

   _cmsFree(ContextID, Ptr);
}
