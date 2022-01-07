
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


 int CHANGE_ENDIAN (int ) ;
 int REVERSE_FLAVOR_16 (int ) ;
 scalar_t__ T_CHANNELS (int ) ;
 scalar_t__ T_DOSWAP (int ) ;
 scalar_t__ T_ENDIAN16 (int ) ;
 scalar_t__ T_EXTRA (int ) ;
 scalar_t__ T_FLAVOR (int ) ;

__attribute__((used)) static
cmsUInt8Number* PackPlanarWords(cmsContext ContextID, register _cmsTRANSFORM* info,
                                register cmsUInt16Number wOut[],
                                register cmsUInt8Number* output,
                                register cmsUInt32Number Stride)
{
    cmsUInt32Number nChan = T_CHANNELS(info -> OutputFormat);
    cmsUInt32Number DoSwap = T_DOSWAP(info ->OutputFormat);
    cmsUInt32Number Reverse = T_FLAVOR(info ->OutputFormat);
    cmsUInt32Number SwapEndian = T_ENDIAN16(info -> OutputFormat);
    cmsUInt32Number i;
    cmsUInt8Number* Init = output;
    cmsUInt16Number v;

    if (DoSwap) {
        output += T_EXTRA(info -> OutputFormat) * Stride;
    }

    for (i=0; i < nChan; i++) {

        cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;

        v = wOut[index];

        if (SwapEndian)
            v = CHANGE_ENDIAN(v);

        if (Reverse)
            v = REVERSE_FLAVOR_16(v);

        *(cmsUInt16Number*) output = v;
        output += Stride;
    }

    return (Init + sizeof(cmsUInt16Number));
}
