
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t cmsUInt32Number ;
typedef int cmsToneCurve ;
typedef int cmsStage ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int ** _cmsStageGetPtrToCurveSet (int *) ;
 int cmsIsToneCurveLinear (int ,int *) ;
 size_t cmsStageOutputChannels (int ,int *) ;

__attribute__((used)) static
cmsBool AllCurvesAreLinear(cmsContext ContextID, cmsStage* mpe)
{
    cmsToneCurve** Curves;
    cmsUInt32Number i, n;

    Curves = _cmsStageGetPtrToCurveSet(mpe);
    if (Curves == ((void*)0)) return FALSE;

    n = cmsStageOutputChannels(ContextID, mpe);

    for (i=0; i < n; i++) {
        if (!cmsIsToneCurveLinear(ContextID, Curves[i])) return FALSE;
    }

    return TRUE;
}
