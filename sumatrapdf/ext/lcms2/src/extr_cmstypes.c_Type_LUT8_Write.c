
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef scalar_t__ cmsUInt8Number ;
typedef scalar_t__ cmsUInt32Number ;
struct TYPE_9__ {scalar_t__ Type; struct TYPE_9__* Next; scalar_t__ Data; } ;
typedef TYPE_3__ cmsStage ;
struct TYPE_10__ {scalar_t__ OutputChannels; scalar_t__ InputChannels; TYPE_3__* Elements; } ;
typedef TYPE_4__ cmsPipeline ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef int _cmsStageToneCurvesData ;
struct TYPE_11__ {int* Double; } ;
typedef TYPE_5__ _cmsStageMatrixData ;
struct TYPE_8__ {int * T; } ;
struct TYPE_12__ {TYPE_2__ Tab; TYPE_1__* Params; } ;
typedef TYPE_6__ _cmsStageCLutData ;
struct TYPE_7__ {scalar_t__* nSamples; } ;


 int FALSE ;
 scalar_t__ FROM_16_TO_8 (int ) ;
 int TRUE ;
 int Write8bitTables (int ,int *,scalar_t__,int *) ;
 int _cmsWrite15Fixed16Number (int ,int *,int) ;
 int _cmsWriteUInt8Number (int ,int *,scalar_t__) ;
 int cmsERROR_UNKNOWN_EXTENSION ;
 scalar_t__ cmsSigCLutElemType ;
 scalar_t__ cmsSigCurveSetElemType ;
 scalar_t__ cmsSigMatrixElemType ;
 int cmsSignalError (int ,int ,char*) ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;
 scalar_t__ uipow (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static
cmsBool Type_LUT8_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUInt32Number j, nTabSize;
    cmsUInt8Number val;
    cmsPipeline* NewLUT = (cmsPipeline*) Ptr;
    cmsStage* mpe;
    _cmsStageToneCurvesData* PreMPE = ((void*)0), *PostMPE = ((void*)0);
    _cmsStageMatrixData* MatMPE = ((void*)0);
    _cmsStageCLutData* clut = ((void*)0);
    cmsUInt32Number clutPoints;
    cmsUNUSED_PARAMETER(self);


    mpe = NewLUT -> Elements;
    if (mpe ->Type == cmsSigMatrixElemType) {

        MatMPE = (_cmsStageMatrixData*) mpe ->Data;
        mpe = mpe -> Next;
    }

    if (mpe != ((void*)0) && mpe ->Type == cmsSigCurveSetElemType) {
        PreMPE = (_cmsStageToneCurvesData*) mpe ->Data;
        mpe = mpe -> Next;
    }

    if (mpe != ((void*)0) && mpe ->Type == cmsSigCLutElemType) {
        clut = (_cmsStageCLutData*) mpe -> Data;
        mpe = mpe ->Next;
    }

    if (mpe != ((void*)0) && mpe ->Type == cmsSigCurveSetElemType) {
        PostMPE = (_cmsStageToneCurvesData*) mpe ->Data;
        mpe = mpe -> Next;
    }


    if (mpe != ((void*)0)) {
        cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "LUT is not suitable to be saved as LUT8");
        return FALSE;
    }


    if (clut == ((void*)0))
        clutPoints = 0;
    else
        clutPoints = clut->Params->nSamples[0];

    if (!_cmsWriteUInt8Number(ContextID, io, (cmsUInt8Number) NewLUT ->InputChannels)) return FALSE;
    if (!_cmsWriteUInt8Number(ContextID, io, (cmsUInt8Number) NewLUT ->OutputChannels)) return FALSE;
    if (!_cmsWriteUInt8Number(ContextID, io, (cmsUInt8Number) clutPoints)) return FALSE;
    if (!_cmsWriteUInt8Number(ContextID, io, 0)) return FALSE;


    if (MatMPE != ((void*)0)) {

        if (!_cmsWrite15Fixed16Number(ContextID, io, MatMPE -> Double[0])) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, MatMPE -> Double[1])) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, MatMPE -> Double[2])) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, MatMPE -> Double[3])) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, MatMPE -> Double[4])) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, MatMPE -> Double[5])) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, MatMPE -> Double[6])) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, MatMPE -> Double[7])) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, MatMPE -> Double[8])) return FALSE;

    }
    else {

        if (!_cmsWrite15Fixed16Number(ContextID, io, 1)) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, 0)) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, 0)) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, 0)) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, 1)) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, 0)) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, 0)) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, 0)) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, 1)) return FALSE;
    }


    if (!Write8bitTables(ContextID, io, NewLUT ->InputChannels, PreMPE)) return FALSE;

    nTabSize = uipow(NewLUT->OutputChannels, clutPoints, NewLUT ->InputChannels);
    if (nTabSize == (cmsUInt32Number) -1) return FALSE;
    if (nTabSize > 0) {


        if (clut != ((void*)0)) {

            for (j=0; j < nTabSize; j++) {

                val = (cmsUInt8Number) FROM_16_TO_8(clut ->Tab.T[j]);
                if (!_cmsWriteUInt8Number(ContextID, io, val)) return FALSE;
            }
        }
    }


    if (!Write8bitTables(ContextID, io, NewLUT ->OutputChannels, PostMPE)) return FALSE;

    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
}
