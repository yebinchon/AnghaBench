
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
struct TYPE_5__ {void* b; void* a; void* L; } ;
typedef TYPE_1__ cmsCIELab ;
struct TYPE_6__ {int InputFormat; } ;
typedef TYPE_2__ _cmsTRANSFORM ;


 int T_EXTRA (int ) ;
 scalar_t__ T_PLANAR (int ) ;
 int cmsFloat2LabEncoded (int ,int *,TYPE_1__*) ;

__attribute__((used)) static
cmsUInt8Number* UnrollLabFloatTo16(cmsContext ContextID, register _cmsTRANSFORM* info,
                                    register cmsUInt16Number wIn[],
                                    register cmsUInt8Number* accum,
                                    register cmsUInt32Number Stride)
{
    cmsCIELab Lab;

    if (T_PLANAR(info -> InputFormat)) {

        cmsUInt8Number* pos_L;
        cmsUInt8Number* pos_a;
        cmsUInt8Number* pos_b;

        pos_L = accum;
        pos_a = accum + Stride;
        pos_b = accum + Stride * 2;

        Lab.L = *(cmsFloat32Number*)pos_L;
        Lab.a = *(cmsFloat32Number*)pos_a;
        Lab.b = *(cmsFloat32Number*)pos_b;

        cmsFloat2LabEncoded(ContextID, wIn, &Lab);
        return accum + sizeof(cmsFloat32Number);
    }
    else {

        Lab.L = ((cmsFloat32Number*) accum)[0];
        Lab.a = ((cmsFloat32Number*) accum)[1];
        Lab.b = ((cmsFloat32Number*) accum)[2];

        cmsFloat2LabEncoded(ContextID, wIn, &Lab);
        accum += (3 + T_EXTRA(info ->InputFormat)) * sizeof(cmsFloat32Number);
        return accum;
    }
}
