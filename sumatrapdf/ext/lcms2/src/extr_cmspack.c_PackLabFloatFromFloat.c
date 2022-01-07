
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef size_t cmsUInt32Number ;
typedef double cmsFloat32Number ;
typedef int cmsContext ;
struct TYPE_3__ {int OutputFormat; } ;
typedef TYPE_1__ _cmsTRANSFORM ;


 size_t PixelSize (int ) ;
 int T_EXTRA (int ) ;
 scalar_t__ T_PLANAR (int ) ;

__attribute__((used)) static
cmsUInt8Number* PackLabFloatFromFloat(cmsContext ContextID, _cmsTRANSFORM* Info,
                                      cmsFloat32Number wOut[],
                                      cmsUInt8Number* output,
                                      cmsUInt32Number Stride)
{
    cmsFloat32Number* Out = (cmsFloat32Number*) output;

    if (T_PLANAR(Info -> OutputFormat)) {

        Stride /= PixelSize(Info->OutputFormat);

        Out[0] = (cmsFloat32Number) (wOut[0] * 100.0);
        Out[Stride] = (cmsFloat32Number) (wOut[1] * 255.0 - 128.0);
        Out[Stride*2] = (cmsFloat32Number) (wOut[2] * 255.0 - 128.0);

        return output + sizeof(cmsFloat32Number);
    }
    else {

        Out[0] = (cmsFloat32Number) (wOut[0] * 100.0);
        Out[1] = (cmsFloat32Number) (wOut[1] * 255.0 - 128.0);
        Out[2] = (cmsFloat32Number) (wOut[2] * 255.0 - 128.0);

        return output + (sizeof(cmsFloat32Number)*3 + T_EXTRA(Info ->OutputFormat) * sizeof(cmsFloat32Number));
    }

}
