
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsToneCurve ;
typedef int cmsStage ;
struct TYPE_6__ {int (* Seek ) (int ,TYPE_1__*,int) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;


 int * FALSE ;
 int * ReadEmbeddedCurve (int ,struct _cms_typehandler_struct*,TYPE_1__*) ;
 int _cmsReadAlignment (int ,TYPE_1__*) ;
 int cmsFreeToneCurve (int ,int *) ;
 int cmsMAXCHANNELS ;
 int * cmsStageAllocToneCurves (int ,int,int **) ;
 int stub1 (int ,TYPE_1__*,int) ;

__attribute__((used)) static
cmsStage* ReadSetOfCurves(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number Offset, cmsUInt32Number nCurves)
{
    cmsToneCurve* Curves[cmsMAXCHANNELS];
    cmsUInt32Number i;
    cmsStage* Lin = ((void*)0);

    if (nCurves > cmsMAXCHANNELS) return FALSE;

    if (!io -> Seek(ContextID, io, Offset)) return FALSE;

    for (i=0; i < nCurves; i++)
        Curves[i] = ((void*)0);

    for (i=0; i < nCurves; i++) {

        Curves[i] = ReadEmbeddedCurve(ContextID, self, io);
        if (Curves[i] == ((void*)0)) goto Error;
        if (!_cmsReadAlignment(ContextID, io)) goto Error;

    }

    Lin = cmsStageAllocToneCurves(ContextID, nCurves, Curves);

Error:
    for (i=0; i < nCurves; i++)
        cmsFreeToneCurve(ContextID, Curves[i]);

    return Lin;
}
