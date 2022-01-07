
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef float cmsFloat32Number ;
typedef int cmsContext ;
struct TYPE_3__ {int InputFormat; int OutputFormat; } ;
typedef TYPE_1__ _cmsTRANSFORM ;


 scalar_t__ IsInkSpace (int ) ;
 int PixelSize (int ) ;
 int T_CHANNELS (int ) ;
 int T_DOSWAP (int ) ;
 int T_EXTRA (int ) ;
 int T_FLAVOR (int ) ;
 int T_PLANAR (int ) ;
 int T_SWAPFIRST (int ) ;
 float _cmsHalf2Float (int ) ;
 int _cmsQuickSaturateWord (float) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static
cmsUInt8Number* UnrollHalfTo16(cmsContext ContextID, register _cmsTRANSFORM* info,
                                register cmsUInt16Number wIn[],
                                register cmsUInt8Number* accum,
                                register cmsUInt32Number Stride)
{

    cmsUInt32Number nChan = T_CHANNELS(info -> InputFormat);
    cmsUInt32Number DoSwap = T_DOSWAP(info ->InputFormat);
    cmsUInt32Number Reverse = T_FLAVOR(info ->InputFormat);
    cmsUInt32Number SwapFirst = T_SWAPFIRST(info -> InputFormat);
    cmsUInt32Number Extra = T_EXTRA(info -> InputFormat);
    cmsUInt32Number ExtraFirst = DoSwap ^ SwapFirst;
    cmsUInt32Number Planar = T_PLANAR(info -> InputFormat);
    cmsFloat32Number v;
    cmsUInt32Number i, start = 0;
    cmsFloat32Number maximum = IsInkSpace(info ->InputFormat) ? 655.35F : 65535.0F;


    Stride /= PixelSize(info->OutputFormat);

    if (ExtraFirst)
            start = Extra;

    for (i=0; i < nChan; i++) {

        cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;

        if (Planar)
            v = _cmsHalf2Float ( ((cmsUInt16Number*) accum)[(i + start) * Stride] );
        else
            v = _cmsHalf2Float ( ((cmsUInt16Number*) accum)[i + start] ) ;

        if (Reverse) v = maximum - v;

        wIn[index] = _cmsQuickSaturateWord(v * maximum);
    }


    if (Extra == 0 && SwapFirst) {
        cmsUInt16Number tmp = wIn[0];

        memmove(&wIn[0], &wIn[1], (nChan-1) * sizeof(cmsUInt16Number));
        wIn[nChan-1] = tmp;
    }

    if (T_PLANAR(info -> InputFormat))
        return accum + sizeof(cmsUInt16Number);
    else
        return accum + (nChan + Extra) * sizeof(cmsUInt16Number);
}
