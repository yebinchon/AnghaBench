
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef double cmsFloat64Number ;
typedef scalar_t__ cmsFloat32Number ;
typedef int cmsContext ;
struct TYPE_3__ {int InputFormat; } ;
typedef TYPE_1__ _cmsTRANSFORM ;


 scalar_t__ IsInkSpace (int ) ;
 int PixelSize (int ) ;
 int T_CHANNELS (int ) ;
 int T_DOSWAP (int ) ;
 int T_EXTRA (int ) ;
 int T_FLAVOR (int ) ;
 int T_PLANAR (int ) ;
 int T_SWAPFIRST (int ) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static
cmsUInt8Number* UnrollDoublesToFloat(cmsContext ContextID, _cmsTRANSFORM* info,
                                    cmsFloat32Number wIn[],
                                    cmsUInt8Number* accum,
                                    cmsUInt32Number Stride)
{

    cmsUInt32Number nChan = T_CHANNELS(info -> InputFormat);
    cmsUInt32Number DoSwap = T_DOSWAP(info ->InputFormat);
    cmsUInt32Number Reverse = T_FLAVOR(info ->InputFormat);
    cmsUInt32Number SwapFirst = T_SWAPFIRST(info -> InputFormat);
    cmsUInt32Number Extra = T_EXTRA(info -> InputFormat);
    cmsUInt32Number ExtraFirst = DoSwap ^ SwapFirst;
    cmsUInt32Number Planar = T_PLANAR(info -> InputFormat);
    cmsFloat64Number v;
    cmsUInt32Number i, start = 0;
    cmsFloat64Number maximum = IsInkSpace(info ->InputFormat) ? 100.0 : 1.0;

    Stride /= PixelSize(info->InputFormat);

    if (ExtraFirst)
            start = Extra;

    for (i=0; i < nChan; i++) {

        cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;

        if (Planar)
            v = (cmsFloat64Number) ((cmsFloat64Number*) accum)[(i + start) * Stride];
        else
            v = (cmsFloat64Number) ((cmsFloat64Number*) accum)[i + start];

        v /= maximum;

        wIn[index] = (cmsFloat32Number) (Reverse ? 1.0 - v : v);
    }


    if (Extra == 0 && SwapFirst) {
        cmsFloat32Number tmp = wIn[0];

        memmove(&wIn[0], &wIn[1], (nChan-1) * sizeof(cmsFloat32Number));
        wIn[nChan-1] = tmp;
    }

    if (T_PLANAR(info -> InputFormat))
        return accum + sizeof(cmsFloat64Number);
    else
        return accum + (nChan + Extra) * sizeof(cmsFloat64Number);
}
