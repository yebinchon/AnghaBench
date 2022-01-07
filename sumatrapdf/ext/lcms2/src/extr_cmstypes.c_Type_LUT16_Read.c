
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt8Number ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef void cmsPipeline ;
typedef int cmsMAT3 ;
typedef int cmsIOHANDLER ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;


 int Read16bitTables (int ,int *,void*,int,int) ;
 scalar_t__ _cmsCalloc (int ,scalar_t__,int) ;
 int _cmsFree (int ,int*) ;
 int _cmsMAT3isIdentity (int ,int *) ;
 int _cmsRead15Fixed16Number (int ,int *,int *) ;
 int _cmsReadUInt16Array (int ,int *,scalar_t__,int*) ;
 int _cmsReadUInt16Number (int ,int *,int*) ;
 int _cmsReadUInt8Number (int ,int *,int*) ;
 int cmsAT_END ;
 int cmsMAXCHANNELS ;
 void* cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int ,void*) ;
 int cmsPipelineInsertStage (int ,void*,int ,int ) ;
 int cmsStageAllocCLut16bit (int ,int,int,int,int*) ;
 int cmsStageAllocMatrix (int ,int,int,int *,int *) ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;
 scalar_t__ uipow (int,int,int) ;

__attribute__((used)) static
void *Type_LUT16_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt8Number InputChannels, OutputChannels, CLUTpoints;
    cmsPipeline* NewLUT = ((void*)0);
    cmsUInt32Number nTabSize;
    cmsFloat64Number Matrix[3*3];
    cmsUInt16Number InputEntries, OutputEntries;
    cmsUNUSED_PARAMETER(self);

    *nItems = 0;

    if (!_cmsReadUInt8Number(ContextID, io, &InputChannels)) return ((void*)0);
    if (!_cmsReadUInt8Number(ContextID, io, &OutputChannels)) return ((void*)0);
    if (!_cmsReadUInt8Number(ContextID, io, &CLUTpoints)) return ((void*)0);


    if (!_cmsReadUInt8Number(ContextID, io, ((void*)0))) return ((void*)0);


    if (InputChannels == 0 || InputChannels > cmsMAXCHANNELS) goto Error;
    if (OutputChannels == 0 || OutputChannels > cmsMAXCHANNELS) goto Error;


    NewLUT = cmsPipelineAlloc(ContextID, InputChannels, OutputChannels);
    if (NewLUT == ((void*)0)) goto Error;


    if (!_cmsRead15Fixed16Number(ContextID, io, &Matrix[0])) goto Error;
    if (!_cmsRead15Fixed16Number(ContextID, io, &Matrix[1])) goto Error;
    if (!_cmsRead15Fixed16Number(ContextID, io, &Matrix[2])) goto Error;
    if (!_cmsRead15Fixed16Number(ContextID, io, &Matrix[3])) goto Error;
    if (!_cmsRead15Fixed16Number(ContextID, io, &Matrix[4])) goto Error;
    if (!_cmsRead15Fixed16Number(ContextID, io, &Matrix[5])) goto Error;
    if (!_cmsRead15Fixed16Number(ContextID, io, &Matrix[6])) goto Error;
    if (!_cmsRead15Fixed16Number(ContextID, io, &Matrix[7])) goto Error;
    if (!_cmsRead15Fixed16Number(ContextID, io, &Matrix[8])) goto Error;



    if ((InputChannels == 3) && !_cmsMAT3isIdentity(ContextID, (cmsMAT3*) Matrix)) {

        if (!cmsPipelineInsertStage(ContextID, NewLUT, cmsAT_END, cmsStageAllocMatrix(ContextID, 3, 3, Matrix, ((void*)0))))
            goto Error;
    }

    if (!_cmsReadUInt16Number(ContextID, io, &InputEntries)) goto Error;
    if (!_cmsReadUInt16Number(ContextID, io, &OutputEntries)) goto Error;

    if (InputEntries > 0x7FFF || OutputEntries > 0x7FFF) goto Error;
    if (CLUTpoints == 1) goto Error;


    if (!Read16bitTables(ContextID, io, NewLUT, InputChannels, InputEntries)) goto Error;


    nTabSize = uipow(OutputChannels, CLUTpoints, InputChannels);
    if (nTabSize == (cmsUInt32Number) -1) goto Error;
    if (nTabSize > 0) {

        cmsUInt16Number *T;

        T = (cmsUInt16Number*) _cmsCalloc(ContextID, nTabSize, sizeof(cmsUInt16Number));
        if (T == ((void*)0)) goto Error;

        if (!_cmsReadUInt16Array(ContextID, io, nTabSize, T)) {
            _cmsFree(ContextID, T);
            goto Error;
        }

        if (!cmsPipelineInsertStage(ContextID, NewLUT, cmsAT_END, cmsStageAllocCLut16bit(ContextID, CLUTpoints, InputChannels, OutputChannels, T))) {
            _cmsFree(ContextID, T);
            goto Error;
        }
        _cmsFree(ContextID, T);
    }



    if (!Read16bitTables(ContextID, io, NewLUT, OutputChannels, OutputEntries)) goto Error;

    *nItems = 1;
    return NewLUT;

Error:
    if (NewLUT != ((void*)0)) cmsPipelineFree(ContextID, NewLUT);
    return ((void*)0);

    cmsUNUSED_PARAMETER(SizeOfTag);
}
