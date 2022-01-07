
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsContext ;
struct TYPE_3__ {int OutputFormat; } ;
typedef TYPE_1__ _cmsTRANSFORM ;


 int FROM_16_TO_8 (int ) ;
 int REVERSE_FLAVOR_8 (int ) ;
 scalar_t__ T_CHANNELS (int ) ;
 scalar_t__ T_DOSWAP (int ) ;
 scalar_t__ T_EXTRA (int ) ;
 scalar_t__ T_FLAVOR (int ) ;
 scalar_t__ T_SWAPFIRST (int ) ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;
 int memmove (int *,int *,scalar_t__) ;

__attribute__((used)) static
cmsUInt8Number* PackAnyBytes(cmsContext ContextID, register _cmsTRANSFORM* info,
                             register cmsUInt16Number wOut[],
                             register cmsUInt8Number* output,
                             register cmsUInt32Number Stride)
{
    cmsUInt32Number nChan = T_CHANNELS(info -> OutputFormat);
    cmsUInt32Number DoSwap = T_DOSWAP(info ->OutputFormat);
    cmsUInt32Number Reverse = T_FLAVOR(info ->OutputFormat);
    cmsUInt32Number Extra = T_EXTRA(info -> OutputFormat);
    cmsUInt32Number SwapFirst = T_SWAPFIRST(info -> OutputFormat);
    cmsUInt32Number ExtraFirst = DoSwap ^ SwapFirst;
    cmsUInt8Number* swap1;
    cmsUInt8Number v = 0;
    cmsUInt32Number i;

    swap1 = output;

    if (ExtraFirst) {
        output += Extra;
    }

    for (i=0; i < nChan; i++) {

        cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;

        v = FROM_16_TO_8(wOut[index]);

        if (Reverse)
            v = REVERSE_FLAVOR_8(v);

        *output++ = v;
    }

    if (!ExtraFirst) {
        output += Extra;
    }

    if (Extra == 0 && SwapFirst) {

        memmove(swap1 + 1, swap1, nChan-1);
        *swap1 = v;
    }


    return output;

    cmsUNUSED_PARAMETER(Stride);
}
