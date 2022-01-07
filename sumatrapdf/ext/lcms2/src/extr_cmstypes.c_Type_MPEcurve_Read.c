
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef scalar_t__ cmsUInt32Number ;
typedef scalar_t__ cmsUInt16Number ;
typedef int cmsToneCurve ;
typedef void cmsStage ;
struct TYPE_6__ {scalar_t__ (* Tell ) (int ,TYPE_1__*) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int _cmsTagBase ;


 int ReadMPECurve ;
 scalar_t__ ReadPositionTable (int ,struct _cms_typehandler_struct*,TYPE_1__*,scalar_t__,scalar_t__,int **,int ) ;
 scalar_t__ _cmsCalloc (int ,scalar_t__,int) ;
 int _cmsFree (int ,int **) ;
 int _cmsReadUInt16Number (int ,TYPE_1__*,scalar_t__*) ;
 int cmsFreeToneCurve (int ,int *) ;
 void* cmsStageAllocToneCurves (int ,scalar_t__,int **) ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;
 scalar_t__ stub1 (int ,TYPE_1__*) ;

__attribute__((used)) static
void *Type_MPEcurve_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsStage* mpe = ((void*)0);
    cmsUInt16Number InputChans, OutputChans;
    cmsUInt32Number i, BaseOffset;
    cmsToneCurve** GammaTables;

    *nItems = 0;


    BaseOffset = io ->Tell(ContextID, io) - sizeof(_cmsTagBase);

    if (!_cmsReadUInt16Number(ContextID, io, &InputChans)) return ((void*)0);
    if (!_cmsReadUInt16Number(ContextID, io, &OutputChans)) return ((void*)0);

    if (InputChans != OutputChans) return ((void*)0);

    GammaTables = (cmsToneCurve**) _cmsCalloc(ContextID, InputChans, sizeof(cmsToneCurve*));
    if (GammaTables == ((void*)0)) return ((void*)0);

    if (ReadPositionTable(ContextID, self, io, InputChans, BaseOffset, GammaTables, ReadMPECurve)) {

        mpe = cmsStageAllocToneCurves(ContextID, InputChans, GammaTables);
    }
    else {
        mpe = ((void*)0);
    }

    for (i=0; i < InputChans; i++) {
        if (GammaTables[i]) cmsFreeToneCurve(ContextID, GammaTables[i]);
    }

    _cmsFree(ContextID, GammaTables);
    *nItems = (mpe != ((void*)0)) ? 1U : 0;
    return mpe;

    cmsUNUSED_PARAMETER(SizeOfTag);
}
