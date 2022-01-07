
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt8Number ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef void cmsPipeline ;
typedef int cmsMAT3 ;
struct TYPE_7__ {int (* Read ) (int ,TYPE_1__*,int*,scalar_t__,int) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;


 int FROM_8_TO_16 (int) ;
 int Read8bitTables (int ,TYPE_1__*,void*,int) ;
 scalar_t__ _cmsCalloc (int ,scalar_t__,int) ;
 int _cmsFree (int ,int*) ;
 int _cmsMAT3isIdentity (int ,int *) ;
 scalar_t__ _cmsMalloc (int ,scalar_t__) ;
 int _cmsRead15Fixed16Number (int ,TYPE_1__*,int *) ;
 int _cmsReadUInt8Number (int ,TYPE_1__*,int*) ;
 int cmsAT_BEGIN ;
 int cmsAT_END ;
 int cmsMAXCHANNELS ;
 void* cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int ,void*) ;
 int cmsPipelineInsertStage (int ,void*,int ,int ) ;
 int cmsStageAllocCLut16bit (int ,int,int,int,int*) ;
 int cmsStageAllocMatrix (int ,int,int,int *,int *) ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;
 int stub1 (int ,TYPE_1__*,int*,scalar_t__,int) ;
 scalar_t__ uipow (int,int,int) ;

__attribute__((used)) static
void *Type_LUT8_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt8Number InputChannels, OutputChannels, CLUTpoints;
    cmsUInt8Number* Temp = ((void*)0);
    cmsPipeline* NewLUT = ((void*)0);
    cmsUInt32Number nTabSize, i;
    cmsFloat64Number Matrix[3*3];
    cmsUNUSED_PARAMETER(self);

    *nItems = 0;

    if (!_cmsReadUInt8Number(ContextID, io, &InputChannels)) goto Error;
    if (!_cmsReadUInt8Number(ContextID, io, &OutputChannels)) goto Error;
    if (!_cmsReadUInt8Number(ContextID, io, &CLUTpoints)) goto Error;

     if (CLUTpoints == 1) goto Error;


    if (!_cmsReadUInt8Number(ContextID, io, ((void*)0))) goto Error;


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

        if (!cmsPipelineInsertStage(ContextID, NewLUT, cmsAT_BEGIN, cmsStageAllocMatrix(ContextID, 3, 3, Matrix, ((void*)0))))
            goto Error;
    }


    if (!Read8bitTables(ContextID, io, NewLUT, InputChannels)) goto Error;


    nTabSize = uipow(OutputChannels, CLUTpoints, InputChannels);
    if (nTabSize == (cmsUInt32Number) -1) goto Error;
    if (nTabSize > 0) {

        cmsUInt16Number *PtrW, *T;

        PtrW = T = (cmsUInt16Number*) _cmsCalloc(ContextID, nTabSize, sizeof(cmsUInt16Number));
        if (T == ((void*)0)) goto Error;

        Temp = (cmsUInt8Number*) _cmsMalloc(ContextID, nTabSize);
        if (Temp == ((void*)0)) {
            _cmsFree(ContextID, T);
            goto Error;
        }

        if (io ->Read(ContextID, io, Temp, nTabSize, 1) != 1) {
            _cmsFree(ContextID, T);
            _cmsFree(ContextID, Temp);
            goto Error;
        }

        for (i = 0; i < nTabSize; i++) {

            *PtrW++ = FROM_8_TO_16(Temp[i]);
        }
        _cmsFree(ContextID, Temp);
        Temp = ((void*)0);

        if (!cmsPipelineInsertStage(ContextID, NewLUT, cmsAT_END, cmsStageAllocCLut16bit(ContextID, CLUTpoints, InputChannels, OutputChannels, T))) {
            _cmsFree(ContextID, T);
            goto Error;
        }
        _cmsFree(ContextID, T);
    }



    if (!Read8bitTables(ContextID, io, NewLUT, OutputChannels)) goto Error;

    *nItems = 1;
    return NewLUT;

Error:
    if (NewLUT != ((void*)0)) cmsPipelineFree(ContextID, NewLUT);
    return ((void*)0);

    cmsUNUSED_PARAMETER(SizeOfTag);
}
