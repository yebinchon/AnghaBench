
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef scalar_t__ cmsUInt32Number ;
typedef scalar_t__ cmsUInt16Number ;
typedef void cmsStage ;
typedef int cmsIOHANDLER ;
typedef int cmsFloat64Number ;
typedef int cmsFloat32Number ;
typedef int cmsContext ;


 scalar_t__ _cmsCalloc (int ,scalar_t__,int) ;
 int _cmsFree (int ,int *) ;
 int _cmsReadFloat32Number (int ,int *,int *) ;
 int _cmsReadUInt16Number (int ,int *,scalar_t__*) ;
 scalar_t__ cmsMAXCHANNELS ;
 void* cmsStageAllocMatrix (int ,scalar_t__,scalar_t__,int *,int *) ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;

__attribute__((used)) static
void *Type_MPEmatrix_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsStage* mpe;
    cmsUInt16Number InputChans, OutputChans;
    cmsUInt32Number nElems, i;
    cmsFloat64Number* Matrix;
    cmsFloat64Number* Offsets;
    cmsUNUSED_PARAMETER(self);

    if (!_cmsReadUInt16Number(ContextID, io, &InputChans)) return ((void*)0);
    if (!_cmsReadUInt16Number(ContextID, io, &OutputChans)) return ((void*)0);




    if (InputChans >= cmsMAXCHANNELS) return ((void*)0);
    if (OutputChans >= cmsMAXCHANNELS) return ((void*)0);

    nElems = (cmsUInt32Number) InputChans * OutputChans;

    Matrix = (cmsFloat64Number*) _cmsCalloc(ContextID, nElems, sizeof(cmsFloat64Number));
    if (Matrix == ((void*)0)) return ((void*)0);

    Offsets = (cmsFloat64Number*) _cmsCalloc(ContextID, OutputChans, sizeof(cmsFloat64Number));
    if (Offsets == ((void*)0)) {

        _cmsFree(ContextID, Matrix);
        return ((void*)0);
    }

    for (i=0; i < nElems; i++) {

        cmsFloat32Number v;

        if (!_cmsReadFloat32Number(ContextID, io, &v)) {
            _cmsFree(ContextID, Matrix);
            _cmsFree(ContextID, Offsets);
            return ((void*)0);
        }
        Matrix[i] = v;
    }


    for (i=0; i < OutputChans; i++) {

        cmsFloat32Number v;

        if (!_cmsReadFloat32Number(ContextID, io, &v)) {
            _cmsFree(ContextID, Matrix);
            _cmsFree(ContextID, Offsets);
            return ((void*)0);
        }
        Offsets[i] = v;
    }


    mpe = cmsStageAllocMatrix(ContextID, OutputChans, InputChans, Matrix, Offsets);
    _cmsFree(ContextID, Matrix);
    _cmsFree(ContextID, Offsets);

    *nItems = 1;

    return mpe;

    cmsUNUSED_PARAMETER(SizeOfTag);
}
