
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef size_t cmsUInt32Number ;
typedef int cmsFloat64Number ;
typedef scalar_t__ cmsFloat32Number ;
typedef int cmsContext ;
struct TYPE_3__ {int InputFormat; } ;
typedef TYPE_1__ _cmsTRANSFORM ;


 int MAX_ENCODEABLE_XYZ ;
 size_t PixelSize (int ) ;
 int T_EXTRA (int ) ;
 scalar_t__ T_PLANAR (int ) ;

__attribute__((used)) static
cmsUInt8Number* UnrollXYZDoubleToFloat(cmsContext ContextID, _cmsTRANSFORM* info,
                                       cmsFloat32Number wIn[],
                                       cmsUInt8Number* accum,
                                       cmsUInt32Number Stride)
{
    cmsFloat64Number* Pt = (cmsFloat64Number*) accum;

    if (T_PLANAR(info -> InputFormat)) {

        Stride /= PixelSize(info->InputFormat);

        wIn[0] = (cmsFloat32Number) (Pt[0] / MAX_ENCODEABLE_XYZ);
        wIn[1] = (cmsFloat32Number) (Pt[Stride] / MAX_ENCODEABLE_XYZ);
        wIn[2] = (cmsFloat32Number) (Pt[Stride*2] / MAX_ENCODEABLE_XYZ);

        return accum + sizeof(cmsFloat64Number);
    }
    else {

        wIn[0] = (cmsFloat32Number) (Pt[0] / MAX_ENCODEABLE_XYZ);
        wIn[1] = (cmsFloat32Number) (Pt[1] / MAX_ENCODEABLE_XYZ);
        wIn[2] = (cmsFloat32Number) (Pt[2] / MAX_ENCODEABLE_XYZ);

        accum += sizeof(cmsFloat64Number)*(3 + T_EXTRA(info ->InputFormat));
        return accum;
    }
}
