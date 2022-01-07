
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef scalar_t__ cmsUInt16Number ;
typedef double cmsFloat64Number ;
typedef scalar_t__ cmsFloat32Number ;
typedef int cmsContext ;
struct TYPE_3__ {int OutputFormat; } ;
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
cmsUInt8Number* PackFloatFrom16(cmsContext ContextID, register _cmsTRANSFORM* info,
                                register cmsUInt16Number wOut[],
                                register cmsUInt8Number* output,
                                register cmsUInt32Number Stride)
{
       cmsUInt32Number nChan = T_CHANNELS(info->OutputFormat);
       cmsUInt32Number DoSwap = T_DOSWAP(info->OutputFormat);
       cmsUInt32Number Reverse = T_FLAVOR(info->OutputFormat);
       cmsUInt32Number Extra = T_EXTRA(info->OutputFormat);
       cmsUInt32Number SwapFirst = T_SWAPFIRST(info->OutputFormat);
       cmsUInt32Number Planar = T_PLANAR(info->OutputFormat);
       cmsUInt32Number ExtraFirst = DoSwap ^ SwapFirst;
       cmsFloat64Number maximum = IsInkSpace(info->OutputFormat) ? 655.35 : 65535.0;
       cmsFloat64Number v = 0;
       cmsFloat32Number* swap1 = (cmsFloat32Number*)output;
       cmsUInt32Number i, start = 0;

       Stride /= PixelSize(info->OutputFormat);

       if (ExtraFirst)
              start = Extra;

       for (i = 0; i < nChan; i++) {

              cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;

              v = (cmsFloat64Number)wOut[index] / maximum;

              if (Reverse)
                     v = maximum - v;

              if (Planar)
                     ((cmsFloat32Number*)output)[(i + start) * Stride] = (cmsFloat32Number)v;
              else
                     ((cmsFloat32Number*)output)[i + start] = (cmsFloat32Number)v;
       }


       if (Extra == 0 && SwapFirst) {

              memmove(swap1 + 1, swap1, (nChan - 1)* sizeof(cmsFloat32Number));
              *swap1 = (cmsFloat32Number)v;
       }

       if (T_PLANAR(info->OutputFormat))
              return output + sizeof(cmsFloat32Number);
       else
              return output + (nChan + Extra) * sizeof(cmsFloat32Number);
}
