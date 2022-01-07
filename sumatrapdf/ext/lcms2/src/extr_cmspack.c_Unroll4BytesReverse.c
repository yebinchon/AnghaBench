
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int * cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsContext ;
typedef int _cmsTRANSFORM ;


 int FROM_8_TO_16 (int ) ;
 int REVERSE_FLAVOR_8 (int ) ;
 int cmsUNUSED_PARAMETER (int *) ;

__attribute__((used)) static
cmsUInt8Number* Unroll4BytesReverse(cmsContext ContextID, register _cmsTRANSFORM* info,
                                    register cmsUInt16Number wIn[],
                                    register cmsUInt8Number* accum,
                                    register cmsUInt32Number Stride)
{
    wIn[0] = FROM_8_TO_16(REVERSE_FLAVOR_8(*accum)); accum++;
    wIn[1] = FROM_8_TO_16(REVERSE_FLAVOR_8(*accum)); accum++;
    wIn[2] = FROM_8_TO_16(REVERSE_FLAVOR_8(*accum)); accum++;
    wIn[3] = FROM_8_TO_16(REVERSE_FLAVOR_8(*accum)); accum++;

    return accum;

    cmsUNUSED_PARAMETER(info);
    cmsUNUSED_PARAMETER(Stride);
}
