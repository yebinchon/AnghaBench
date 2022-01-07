
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef scalar_t__ cmsUInt8Number ;
typedef scalar_t__ cmsUInt32Number ;
typedef void cmsPipeline ;
struct TYPE_10__ {scalar_t__ (* Tell ) (int ,TYPE_1__*) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int _cmsTagBase ;


 int ReadCLUT (int ,struct _cms_typehandler_struct*,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ;
 int ReadMatrix (int ,struct _cms_typehandler_struct*,TYPE_1__*,scalar_t__) ;
 int ReadSetOfCurves (int ,struct _cms_typehandler_struct*,TYPE_1__*,scalar_t__,scalar_t__) ;
 int _cmsReadUInt16Number (int ,TYPE_1__*,int *) ;
 int _cmsReadUInt32Number (int ,TYPE_1__*,scalar_t__*) ;
 int _cmsReadUInt8Number (int ,TYPE_1__*,scalar_t__*) ;
 int cmsAT_END ;
 scalar_t__ cmsMAXCHANNELS ;
 void* cmsPipelineAlloc (int ,scalar_t__,scalar_t__) ;
 int cmsPipelineFree (int ,void*) ;
 int cmsPipelineInsertStage (int ,void*,int ,int ) ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;
 scalar_t__ stub1 (int ,TYPE_1__*) ;

__attribute__((used)) static
void* Type_LUTA2B_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt32Number BaseOffset;
    cmsUInt8Number inputChan;
    cmsUInt8Number outputChan;
    cmsUInt32Number offsetB;
    cmsUInt32Number offsetMat;
    cmsUInt32Number offsetM;
    cmsUInt32Number offsetC;
    cmsUInt32Number offsetA;
    cmsPipeline* NewLUT = ((void*)0);


    BaseOffset = io ->Tell(ContextID, io) - sizeof(_cmsTagBase);

    if (!_cmsReadUInt8Number(ContextID, io, &inputChan)) return ((void*)0);
    if (!_cmsReadUInt8Number(ContextID, io, &outputChan)) return ((void*)0);

    if (!_cmsReadUInt16Number(ContextID, io, ((void*)0))) return ((void*)0);

    if (!_cmsReadUInt32Number(ContextID, io, &offsetB)) return ((void*)0);
    if (!_cmsReadUInt32Number(ContextID, io, &offsetMat)) return ((void*)0);
    if (!_cmsReadUInt32Number(ContextID, io, &offsetM)) return ((void*)0);
    if (!_cmsReadUInt32Number(ContextID, io, &offsetC)) return ((void*)0);
    if (!_cmsReadUInt32Number(ContextID, io, &offsetA)) return ((void*)0);

    if (inputChan == 0 || inputChan >= cmsMAXCHANNELS) return ((void*)0);
    if (outputChan == 0 || outputChan >= cmsMAXCHANNELS) return ((void*)0);


    NewLUT = cmsPipelineAlloc(ContextID, inputChan, outputChan);
    if (NewLUT == ((void*)0)) return ((void*)0);

    if (offsetA!= 0) {
        if (!cmsPipelineInsertStage(ContextID, NewLUT, cmsAT_END, ReadSetOfCurves(ContextID, self, io, BaseOffset + offsetA, inputChan)))
            goto Error;
    }

    if (offsetC != 0) {
        if (!cmsPipelineInsertStage(ContextID, NewLUT, cmsAT_END, ReadCLUT(ContextID, self, io, BaseOffset + offsetC, inputChan, outputChan)))
            goto Error;
    }

    if (offsetM != 0) {
        if (!cmsPipelineInsertStage(ContextID, NewLUT, cmsAT_END, ReadSetOfCurves(ContextID, self, io, BaseOffset + offsetM, outputChan)))
            goto Error;
    }

    if (offsetMat != 0) {
        if (!cmsPipelineInsertStage(ContextID, NewLUT, cmsAT_END, ReadMatrix(ContextID, self, io, BaseOffset + offsetMat)))
            goto Error;
    }

    if (offsetB != 0) {
        if (!cmsPipelineInsertStage(ContextID, NewLUT, cmsAT_END, ReadSetOfCurves(ContextID, self, io, BaseOffset + offsetB, outputChan)))
            goto Error;
    }

    *nItems = 1;
    return NewLUT;
Error:
    cmsPipelineFree(ContextID, NewLUT);
    return ((void*)0);

    cmsUNUSED_PARAMETER(SizeOfTag);
}
