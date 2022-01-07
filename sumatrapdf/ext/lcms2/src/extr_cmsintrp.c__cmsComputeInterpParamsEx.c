
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
struct TYPE_5__ {size_t dwFlags; size_t nInputs; size_t nOutputs; size_t* nSamples; size_t* Domain; size_t* opta; void const* Table; } ;
typedef TYPE_1__ cmsInterpParams ;
typedef int cmsContext ;


 size_t MAX_INPUT_DIMENSIONS ;
 int _cmsFree (int ,TYPE_1__*) ;
 scalar_t__ _cmsMallocZero (int ,int) ;
 int _cmsSetInterpolationRoutine (int ,TYPE_1__*) ;
 int cmsERROR_RANGE ;
 int cmsERROR_UNKNOWN_EXTENSION ;
 int cmsSignalError (int ,int ,char*,size_t,size_t) ;

cmsInterpParams* _cmsComputeInterpParamsEx(cmsContext ContextID,
                                           const cmsUInt32Number nSamples[],
                                           cmsUInt32Number InputChan, cmsUInt32Number OutputChan,
                                           const void *Table,
                                           cmsUInt32Number dwFlags)
{
    cmsInterpParams* p;
    cmsUInt32Number i;


    if (InputChan > MAX_INPUT_DIMENSIONS) {
             cmsSignalError(ContextID, cmsERROR_RANGE, "Too many input channels (%d channels, max=%d)", InputChan, MAX_INPUT_DIMENSIONS);
            return ((void*)0);
    }


    p = (cmsInterpParams*) _cmsMallocZero(ContextID, sizeof(cmsInterpParams));
    if (p == ((void*)0)) return ((void*)0);


    p -> dwFlags = dwFlags;
    p -> nInputs = InputChan;
    p -> nOutputs = OutputChan;
    p ->Table = Table;


    for (i=0; i < InputChan; i++) {

        p -> nSamples[i] = nSamples[i];
        p -> Domain[i] = nSamples[i] - 1;
    }


    p -> opta[0] = p -> nOutputs;
    for (i=1; i < InputChan; i++)
        p ->opta[i] = p ->opta[i-1] * nSamples[InputChan-i];


    if (!_cmsSetInterpolationRoutine(ContextID, p)) {
         cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unsupported interpolation (%d->%d channels)", InputChan, OutputChan);
        _cmsFree(ContextID, p);
        return ((void*)0);
    }


    return p;
}
