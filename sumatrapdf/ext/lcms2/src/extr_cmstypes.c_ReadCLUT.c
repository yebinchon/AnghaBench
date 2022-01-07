
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
struct TYPE_15__ {scalar_t__ Data; } ;
typedef TYPE_2__ cmsStage ;
struct TYPE_16__ {int (* Read ) (int ,TYPE_3__*,int*,int,int) ;int (* Seek ) (int ,TYPE_3__*,int) ;} ;
typedef TYPE_3__ cmsIOHANDLER ;
typedef int cmsContext ;
struct TYPE_14__ {int * T; } ;
struct TYPE_17__ {int nEntries; TYPE_1__ Tab; } ;
typedef TYPE_4__ _cmsStageCLutData ;


 int FROM_8_TO_16 (int) ;
 int _cmsReadUInt16Array (int ,TYPE_3__*,int,int *) ;
 int _cmsReadUInt8Number (int ,TYPE_3__*,int*) ;
 int cmsERROR_UNKNOWN_EXTENSION ;
 int cmsMAXCHANNELS ;
 int cmsSignalError (int ,int ,char*,int) ;
 TYPE_2__* cmsStageAllocCLut16bitGranular (int ,int*,int,int,int *) ;
 int cmsStageFree (int ,TYPE_2__*) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;
 int stub1 (int ,TYPE_3__*,int) ;
 int stub2 (int ,TYPE_3__*,int*,int,int) ;
 int stub3 (int ,TYPE_3__*,int*,int,int) ;

__attribute__((used)) static
cmsStage* ReadCLUT(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io,
                   cmsUInt32Number Offset, cmsUInt32Number InputChannels, cmsUInt32Number OutputChannels)
{
    cmsUInt8Number gridPoints8[cmsMAXCHANNELS];
    cmsUInt32Number GridPoints[cmsMAXCHANNELS], i;
    cmsUInt8Number Precision;
    cmsStage* CLUT;
    _cmsStageCLutData* Data;
    cmsUNUSED_PARAMETER(self);

    if (!io -> Seek(ContextID, io, Offset)) return ((void*)0);
    if (io -> Read(ContextID, io, gridPoints8, cmsMAXCHANNELS, 1) != 1) return ((void*)0);


    for (i=0; i < cmsMAXCHANNELS; i++) {

        if (gridPoints8[i] == 1) return ((void*)0);
        GridPoints[i] = gridPoints8[i];
    }

    if (!_cmsReadUInt8Number(ContextID, io, &Precision)) return ((void*)0);

    if (!_cmsReadUInt8Number(ContextID, io, ((void*)0))) return ((void*)0);
    if (!_cmsReadUInt8Number(ContextID, io, ((void*)0))) return ((void*)0);
    if (!_cmsReadUInt8Number(ContextID, io, ((void*)0))) return ((void*)0);

    CLUT = cmsStageAllocCLut16bitGranular(ContextID, GridPoints, InputChannels, OutputChannels, ((void*)0));
    if (CLUT == ((void*)0)) return ((void*)0);

    Data = (_cmsStageCLutData*) CLUT ->Data;


    if (Precision == 1) {

        cmsUInt8Number v;

        for (i=0; i < Data ->nEntries; i++) {

            if (io ->Read(ContextID, io, &v, sizeof(cmsUInt8Number), 1) != 1) {
                cmsStageFree(ContextID, CLUT);
                return ((void*)0);
            }
            Data ->Tab.T[i] = FROM_8_TO_16(v);
        }

    }
    else
        if (Precision == 2) {

            if (!_cmsReadUInt16Array(ContextID, io, Data->nEntries, Data ->Tab.T)) {
                cmsStageFree(ContextID, CLUT);
                return ((void*)0);
            }
        }
        else {
            cmsStageFree(ContextID, CLUT);
            cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unknown precision of '%d'", Precision);
            return ((void*)0);
        }

    return CLUT;
}
