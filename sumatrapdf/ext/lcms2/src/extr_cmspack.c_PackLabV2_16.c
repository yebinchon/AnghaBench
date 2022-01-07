
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int * cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsContext ;
typedef int _cmsTRANSFORM ;


 int FomLabV4ToLabV2 (int ) ;
 int cmsUNUSED_PARAMETER (int *) ;

__attribute__((used)) static
cmsUInt8Number* PackLabV2_16(cmsContext ContextID, register _cmsTRANSFORM* info,
                             register cmsUInt16Number wOut[],
                             register cmsUInt8Number* output,
                             register cmsUInt32Number Stride)
{
    *(cmsUInt16Number*) output = FomLabV4ToLabV2(wOut[0]);
    output += 2;
    *(cmsUInt16Number*) output = FomLabV4ToLabV2(wOut[1]);
    output += 2;
    *(cmsUInt16Number*) output = FomLabV4ToLabV2(wOut[2]);
    output += 2;

    return output;

    cmsUNUSED_PARAMETER(info);
    cmsUNUSED_PARAMETER(Stride);
}
