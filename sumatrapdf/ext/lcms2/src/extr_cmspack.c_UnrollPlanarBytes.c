
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsContext ;
struct TYPE_3__ {int InputFormat; } ;
typedef TYPE_1__ _cmsTRANSFORM ;


 int FROM_8_TO_16 (int ) ;
 int REVERSE_FLAVOR_16 (int ) ;
 int T_CHANNELS (int ) ;
 int T_DOSWAP (int ) ;
 int T_EXTRA (int ) ;
 int T_FLAVOR (int ) ;
 int T_SWAPFIRST (int ) ;

__attribute__((used)) static
cmsUInt8Number* UnrollPlanarBytes(cmsContext ContextID, register _cmsTRANSFORM* info,
                                  register cmsUInt16Number wIn[],
                                  register cmsUInt8Number* accum,
                                  register cmsUInt32Number Stride)
{
    cmsUInt32Number nChan = T_CHANNELS(info -> InputFormat);
    cmsUInt32Number DoSwap = T_DOSWAP(info ->InputFormat);
    cmsUInt32Number SwapFirst = T_SWAPFIRST(info ->InputFormat);
    cmsUInt32Number Reverse = T_FLAVOR(info ->InputFormat);
    cmsUInt32Number i;
    cmsUInt8Number* Init = accum;

    if (DoSwap ^ SwapFirst) {
        accum += T_EXTRA(info -> InputFormat) * Stride;
    }

    for (i=0; i < nChan; i++) {

        cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;
        cmsUInt16Number v = FROM_8_TO_16(*accum);

        wIn[index] = Reverse ? REVERSE_FLAVOR_16(v) : v;
        accum += Stride;
    }

    return (Init + 1);
}
