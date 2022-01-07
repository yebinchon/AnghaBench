
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef struct _cms_typehandler_struct* cmsUInt32Number ;
typedef int cmsToneCurve ;
typedef int cmsContext ;


 scalar_t__ _cmsCalloc (int ,int,int) ;
 int * cmsDupToneCurve (int ,int *) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
void* Type_vcgt_Dup(cmsContext ContextID, struct _cms_typehandler_struct* self, const void *Ptr, cmsUInt32Number n)
{
    cmsToneCurve** OldCurves = (cmsToneCurve**) Ptr;
    cmsToneCurve** NewCurves;
    cmsUNUSED_PARAMETER(self);

    NewCurves = ( cmsToneCurve**) _cmsCalloc(ContextID, 3, sizeof(cmsToneCurve*));
    if (NewCurves == ((void*)0)) return ((void*)0);

    NewCurves[0] = cmsDupToneCurve(ContextID, OldCurves[0]);
    NewCurves[1] = cmsDupToneCurve(ContextID, OldCurves[1]);
    NewCurves[2] = cmsDupToneCurve(ContextID, OldCurves[2]);

    return (void*) NewCurves;

    cmsUNUSED_PARAMETER(n);
}
