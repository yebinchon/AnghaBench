
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int gridPoints ;
typedef int cmsUInt8Number ;
typedef size_t cmsUInt32Number ;
struct TYPE_14__ {scalar_t__ Data; } ;
typedef TYPE_3__ cmsStage ;
struct TYPE_15__ {int (* Write ) (int ,TYPE_4__*,int,int*) ;} ;
typedef TYPE_4__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_13__ {int * T; } ;
struct TYPE_16__ {size_t nEntries; TYPE_2__ Tab; TYPE_1__* Params; scalar_t__ HasFloatValues; } ;
typedef TYPE_5__ _cmsStageCLutData ;
struct TYPE_12__ {scalar_t__* nSamples; scalar_t__ nInputs; } ;


 int FALSE ;
 int FROM_16_TO_8 (int ) ;
 int TRUE ;
 int _cmsWriteAlignment (int ,TYPE_4__*) ;
 int _cmsWriteUInt16Array (int ,TYPE_4__*,size_t,int *) ;
 int _cmsWriteUInt8Number (int ,TYPE_4__*,int) ;
 int cmsERROR_NOT_SUITABLE ;
 int cmsERROR_UNKNOWN_EXTENSION ;
 int cmsMAXCHANNELS ;
 int cmsSignalError (int ,int ,char*,...) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;
 int memset (int*,int ,int) ;
 int stub1 (int ,TYPE_4__*,int,int*) ;

__attribute__((used)) static
cmsBool WriteCLUT(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt8Number Precision, cmsStage* mpe)
{
    cmsUInt8Number gridPoints[cmsMAXCHANNELS];
    cmsUInt32Number i;
    _cmsStageCLutData* CLUT = ( _cmsStageCLutData*) mpe -> Data;
    cmsUNUSED_PARAMETER(self);

    if (CLUT ->HasFloatValues) {
         cmsSignalError(ContextID, cmsERROR_NOT_SUITABLE, "Cannot save floating point data, CLUT are 8 or 16 bit only");
         return FALSE;
    }

    memset(gridPoints, 0, sizeof(gridPoints));
    for (i=0; i < (cmsUInt32Number) CLUT ->Params ->nInputs; i++)
        gridPoints[i] = (cmsUInt8Number) CLUT ->Params ->nSamples[i];

    if (!io -> Write(ContextID, io, cmsMAXCHANNELS*sizeof(cmsUInt8Number), gridPoints)) return FALSE;

    if (!_cmsWriteUInt8Number(ContextID, io, (cmsUInt8Number) Precision)) return FALSE;
    if (!_cmsWriteUInt8Number(ContextID, io, 0)) return FALSE;
    if (!_cmsWriteUInt8Number(ContextID, io, 0)) return FALSE;
    if (!_cmsWriteUInt8Number(ContextID, io, 0)) return FALSE;


    if (Precision == 1) {

        for (i=0; i < CLUT->nEntries; i++) {

            if (!_cmsWriteUInt8Number(ContextID, io, FROM_16_TO_8(CLUT->Tab.T[i]))) return FALSE;
        }
    }
    else
        if (Precision == 2) {

            if (!_cmsWriteUInt16Array(ContextID, io, CLUT->nEntries, CLUT ->Tab.T)) return FALSE;
        }
        else {
             cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unknown precision of '%d'", Precision);
            return FALSE;
        }

    if (!_cmsWriteAlignment(ContextID, io)) return FALSE;

    return TRUE;
}
