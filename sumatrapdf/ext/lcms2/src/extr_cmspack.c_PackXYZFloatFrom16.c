
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef size_t cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef scalar_t__ cmsFloat32Number ;
typedef int cmsContext ;
struct TYPE_5__ {int Z; int Y; int X; } ;
typedef TYPE_1__ cmsCIEXYZ ;
struct TYPE_6__ {int OutputFormat; } ;
typedef TYPE_2__ _cmsTRANSFORM ;


 size_t PixelSize (int ) ;
 int T_EXTRA (int ) ;
 scalar_t__ T_PLANAR (int ) ;
 int cmsXYZEncoded2Float (int ,TYPE_1__*,int *) ;

__attribute__((used)) static
cmsUInt8Number* PackXYZFloatFrom16(cmsContext ContextID, register _cmsTRANSFORM* Info,
                                   register cmsUInt16Number wOut[],
                                   register cmsUInt8Number* output,
                                   register cmsUInt32Number Stride)
{
    if (T_PLANAR(Info -> OutputFormat)) {

        cmsCIEXYZ XYZ;
        cmsFloat32Number* Out = (cmsFloat32Number*) output;
        cmsXYZEncoded2Float(ContextID, &XYZ, wOut);

        Stride /= PixelSize(Info->OutputFormat);

        Out[0] = (cmsFloat32Number) XYZ.X;
        Out[Stride] = (cmsFloat32Number) XYZ.Y;
        Out[Stride*2] = (cmsFloat32Number) XYZ.Z;

        return output + sizeof(cmsFloat32Number);

    }
    else {

        cmsCIEXYZ XYZ;
        cmsFloat32Number* Out = (cmsFloat32Number*) output;
        cmsXYZEncoded2Float(ContextID, &XYZ, wOut);

        Out[0] = (cmsFloat32Number) XYZ.X;
        Out[1] = (cmsFloat32Number) XYZ.Y;
        Out[2] = (cmsFloat32Number) XYZ.Z;

        return output + (3 * sizeof(cmsFloat32Number) + T_EXTRA(Info ->OutputFormat) * sizeof(cmsFloat32Number));
    }
}
