
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsContext ;
struct TYPE_3__ {int OutputFormat; } ;
typedef TYPE_1__ _cmsTRANSFORM ;


 int CHANGE_ENDIAN (int ) ;
 int REVERSE_FLAVOR_16 (int ) ;
 int T_CHANNELS (int ) ;
 int T_DOSWAP (int ) ;
 int T_ENDIAN16 (int ) ;
 int T_EXTRA (int ) ;
 int T_FLAVOR (int ) ;
 int T_SWAPFIRST (int ) ;
 int cmsUNUSED_PARAMETER (int) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static
cmsUInt8Number* PackAnyWords(cmsContext ContextID, register _cmsTRANSFORM* info,
                             register cmsUInt16Number wOut[],
                             register cmsUInt8Number* output,
                             register cmsUInt32Number Stride)
{
    cmsUInt32Number nChan = T_CHANNELS(info -> OutputFormat);
    cmsUInt32Number SwapEndian = T_ENDIAN16(info -> OutputFormat);
    cmsUInt32Number DoSwap = T_DOSWAP(info ->OutputFormat);
    cmsUInt32Number Reverse = T_FLAVOR(info ->OutputFormat);
    cmsUInt32Number Extra = T_EXTRA(info -> OutputFormat);
    cmsUInt32Number SwapFirst = T_SWAPFIRST(info -> OutputFormat);
    cmsUInt32Number ExtraFirst = DoSwap ^ SwapFirst;
    cmsUInt16Number* swap1;
    cmsUInt16Number v = 0;
    cmsUInt32Number i;

    swap1 = (cmsUInt16Number*) output;

    if (ExtraFirst) {
        output += Extra * sizeof(cmsUInt16Number);
    }

    for (i=0; i < nChan; i++) {

        cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;

        v = wOut[index];

        if (SwapEndian)
            v = CHANGE_ENDIAN(v);

        if (Reverse)
            v = REVERSE_FLAVOR_16(v);

        *(cmsUInt16Number*) output = v;

        output += sizeof(cmsUInt16Number);
    }

    if (!ExtraFirst) {
        output += Extra * sizeof(cmsUInt16Number);
    }

    if (Extra == 0 && SwapFirst) {

        memmove(swap1 + 1, swap1, (nChan-1)* sizeof(cmsUInt16Number));
        *swap1 = v;
    }


    return output;

    cmsUNUSED_PARAMETER(Stride);
}
