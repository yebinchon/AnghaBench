
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
struct TYPE_5__ {int b; int a; int L; } ;
typedef TYPE_1__ cmsCIELab ;
struct TYPE_6__ {int OutputFormat; } ;
typedef TYPE_2__ _cmsTRANSFORM ;


 int T_EXTRA (int ) ;
 scalar_t__ T_PLANAR (int ) ;
 int cmsLabEncoded2Float (int ,TYPE_1__*,int *) ;

__attribute__((used)) static
cmsUInt8Number* PackLabDoubleFrom16(cmsContext ContextID, register _cmsTRANSFORM* info,
                                    register cmsUInt16Number wOut[],
                                    register cmsUInt8Number* output,
                                    register cmsUInt32Number Stride)
{

    if (T_PLANAR(info -> OutputFormat)) {

        cmsCIELab Lab;
        cmsFloat64Number* Out = (cmsFloat64Number*) output;
        cmsLabEncoded2Float(ContextID, &Lab, wOut);

        Out[0] = Lab.L;
        Out[Stride] = Lab.a;
        Out[Stride*2] = Lab.b;

        return output + sizeof(cmsFloat64Number);
    }
    else {

        cmsLabEncoded2Float(ContextID, (cmsCIELab*) output, wOut);
        return output + (sizeof(cmsCIELab) + T_EXTRA(info ->OutputFormat) * sizeof(cmsFloat64Number));
    }
}
