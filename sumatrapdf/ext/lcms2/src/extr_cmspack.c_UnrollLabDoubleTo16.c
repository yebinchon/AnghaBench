
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef void* cmsFloat64Number ;
typedef int cmsContext ;
struct TYPE_5__ {void* b; void* a; void* L; } ;
typedef TYPE_1__ cmsCIELab ;
struct TYPE_6__ {int InputFormat; } ;
typedef TYPE_2__ _cmsTRANSFORM ;


 int T_EXTRA (int ) ;
 scalar_t__ T_PLANAR (int ) ;
 int cmsFloat2LabEncoded (int ,int *,TYPE_1__*) ;

__attribute__((used)) static
cmsUInt8Number* UnrollLabDoubleTo16(cmsContext ContextID, register _cmsTRANSFORM* info,
                                    register cmsUInt16Number wIn[],
                                    register cmsUInt8Number* accum,
                                    register cmsUInt32Number Stride)
{
    if (T_PLANAR(info -> InputFormat)) {

        cmsCIELab Lab;
        cmsUInt8Number* pos_L;
        cmsUInt8Number* pos_a;
        cmsUInt8Number* pos_b;

        pos_L = accum;
        pos_a = accum + Stride;
        pos_b = accum + Stride * 2;

        Lab.L = *(cmsFloat64Number*) pos_L;
        Lab.a = *(cmsFloat64Number*) pos_a;
        Lab.b = *(cmsFloat64Number*) pos_b;

        cmsFloat2LabEncoded(ContextID, wIn, &Lab);
        return accum + sizeof(cmsFloat64Number);
    }
    else {

        cmsFloat2LabEncoded(ContextID, wIn, (cmsCIELab*) accum);
        accum += sizeof(cmsCIELab) + T_EXTRA(info ->InputFormat) * sizeof(cmsFloat64Number);
        return accum;
    }
}
