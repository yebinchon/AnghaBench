
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef void* cmsFloat32Number ;
typedef int cmsContext ;
struct TYPE_5__ {void* Z; void* Y; void* X; } ;
typedef TYPE_1__ cmsCIEXYZ ;
struct TYPE_6__ {int InputFormat; } ;
typedef TYPE_2__ _cmsTRANSFORM ;


 int T_EXTRA (int ) ;
 scalar_t__ T_PLANAR (int ) ;
 int cmsFloat2XYZEncoded (int ,int *,TYPE_1__*) ;

__attribute__((used)) static
cmsUInt8Number* UnrollXYZFloatTo16(cmsContext ContextID, register _cmsTRANSFORM* info,
                                   register cmsUInt16Number wIn[],
                                   register cmsUInt8Number* accum,
                                   register cmsUInt32Number Stride)
{
    if (T_PLANAR(info -> InputFormat)) {

        cmsCIEXYZ XYZ;
        cmsUInt8Number* pos_X;
        cmsUInt8Number* pos_Y;
        cmsUInt8Number* pos_Z;

        pos_X = accum;
        pos_Y = accum + Stride;
        pos_Z = accum + Stride * 2;

        XYZ.X = *(cmsFloat32Number*)pos_X;
        XYZ.Y = *(cmsFloat32Number*)pos_Y;
        XYZ.Z = *(cmsFloat32Number*)pos_Z;

        cmsFloat2XYZEncoded(ContextID, wIn, &XYZ);

        return accum + sizeof(cmsFloat32Number);

    }

    else {
        cmsFloat32Number* Pt = (cmsFloat32Number*) accum;
        cmsCIEXYZ XYZ;

        XYZ.X = Pt[0];
        XYZ.Y = Pt[1];
        XYZ.Z = Pt[2];
        cmsFloat2XYZEncoded(ContextID, wIn, &XYZ);

        accum += 3 * sizeof(cmsFloat32Number) + T_EXTRA(info ->InputFormat) * sizeof(cmsFloat32Number);

        return accum;
    }
}
