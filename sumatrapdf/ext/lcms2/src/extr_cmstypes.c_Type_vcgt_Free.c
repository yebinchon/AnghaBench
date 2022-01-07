
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsToneCurve ;
typedef int cmsContext ;


 int _cmsFree (int ,void*) ;
 int cmsFreeToneCurveTriple (int ,int **) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
void Type_vcgt_Free(cmsContext ContextID, struct _cms_typehandler_struct* self, void* Ptr)
{
    cmsUNUSED_PARAMETER(self);
    cmsFreeToneCurveTriple(ContextID, (cmsToneCurve**) Ptr);
    _cmsFree(ContextID, Ptr);
}
