
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int * cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsContext ;
typedef int _cmsTRANSFORM ;


 int cmsUNUSED_PARAMETER (int *) ;

__attribute__((used)) static
cmsUInt8Number* Unroll3WordsSkip1SwapFirst(cmsContext ContextID, register _cmsTRANSFORM* info,
                                           register cmsUInt16Number wIn[],
                                           register cmsUInt8Number* accum,
                                           register cmsUInt32Number Stride)
{
    accum += 2;
    wIn[0] = *(cmsUInt16Number*) accum; accum += 2;
    wIn[1] = *(cmsUInt16Number*) accum; accum += 2;
    wIn[2] = *(cmsUInt16Number*) accum; accum += 2;

    return accum;

    cmsUNUSED_PARAMETER(info);
    cmsUNUSED_PARAMETER(Stride);
}
