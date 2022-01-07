
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
cmsUInt8Number* UnrollAnyWords(cmsContext ContextID, register _cmsTRANSFORM* info,
                               register cmsUInt16Number wIn[],
                               register cmsUInt8Number* accum,
                               register cmsUInt32Number Stride)
{
   cmsUInt32Number nChan = T_CHANNELS(info -> InputFormat);
   cmsUInt32Number SwapEndian = T_ENDIAN16(info -> InputFormat);
   cmsUInt32Number DoSwap = T_DOSWAP(info ->InputFormat);
   cmsUInt32Number Reverse = T_FLAVOR(info ->InputFormat);
   cmsUInt32Number SwapFirst = T_SWAPFIRST(info -> InputFormat);
   cmsUInt32Number Extra = T_EXTRA(info -> InputFormat);
   cmsUInt32Number ExtraFirst = DoSwap ^ SwapFirst;
   cmsUInt32Number i;

    if (ExtraFirst) {
        accum += Extra * sizeof(cmsUInt16Number);
    }

    for (i=0; i < nChan; i++) {

        cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;
        cmsUInt16Number v = *(cmsUInt16Number*) accum;

        if (SwapEndian)
            v = CHANGE_ENDIAN(v);

        wIn[index] = Reverse ? REVERSE_FLAVOR_16(v) : v;

        accum += sizeof(cmsUInt16Number);
    }

    if (!ExtraFirst) {
        accum += Extra * sizeof(cmsUInt16Number);
    }

    if (Extra == 0 && SwapFirst) {

        cmsUInt16Number tmp = wIn[0];

        memmove(&wIn[0], &wIn[1], (nChan-1) * sizeof(cmsUInt16Number));
        wIn[nChan-1] = tmp;
    }

    return accum;

    cmsUNUSED_PARAMETER(Stride);
}
