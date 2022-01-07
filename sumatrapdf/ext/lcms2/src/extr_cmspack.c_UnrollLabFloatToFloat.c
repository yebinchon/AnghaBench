
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef size_t cmsUInt32Number ;
typedef double cmsFloat32Number ;
typedef int cmsContext ;
struct TYPE_3__ {int InputFormat; } ;
typedef TYPE_1__ _cmsTRANSFORM ;


 size_t PixelSize (int ) ;
 int T_EXTRA (int ) ;
 scalar_t__ T_PLANAR (int ) ;

__attribute__((used)) static
cmsUInt8Number* UnrollLabFloatToFloat(cmsContext ContextID, _cmsTRANSFORM* info,
                                      cmsFloat32Number wIn[],
                                      cmsUInt8Number* accum,
                                      cmsUInt32Number Stride)
{
    cmsFloat32Number* Pt = (cmsFloat32Number*) accum;

    if (T_PLANAR(info -> InputFormat)) {

        Stride /= PixelSize(info->InputFormat);

        wIn[0] = (cmsFloat32Number) (Pt[0] / 100.0);
        wIn[1] = (cmsFloat32Number) ((Pt[Stride] + 128) / 255.0);
        wIn[2] = (cmsFloat32Number) ((Pt[Stride*2] + 128) / 255.0);

        return accum + sizeof(cmsFloat32Number);
    }
    else {

        wIn[0] = (cmsFloat32Number) (Pt[0] / 100.0);
        wIn[1] = (cmsFloat32Number) ((Pt[1] + 128) / 255.0);
        wIn[2] = (cmsFloat32Number) ((Pt[2] + 128) / 255.0);

        accum += sizeof(cmsFloat32Number)*(3 + T_EXTRA(info ->InputFormat));
        return accum;
    }
}
