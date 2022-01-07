
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef size_t cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsFloat64Number ;
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
cmsUInt8Number* PackXYZDoubleFrom16(cmsContext ContextID, register _cmsTRANSFORM* Info,
                                    register cmsUInt16Number wOut[],
                                    register cmsUInt8Number* output,
                                    register cmsUInt32Number Stride)
{
    if (T_PLANAR(Info -> OutputFormat)) {

        cmsCIEXYZ XYZ;
        cmsFloat64Number* Out = (cmsFloat64Number*) output;
        cmsXYZEncoded2Float(ContextID, &XYZ, wOut);

        Stride /= PixelSize(Info->OutputFormat);

        Out[0] = XYZ.X;
        Out[Stride] = XYZ.Y;
        Out[Stride*2] = XYZ.Z;

        return output + sizeof(cmsFloat64Number);

    }
    else {

        cmsXYZEncoded2Float(ContextID, (cmsCIEXYZ*) output, wOut);

        return output + (sizeof(cmsCIEXYZ) + T_EXTRA(Info ->OutputFormat) * sizeof(cmsFloat64Number));
    }
}
