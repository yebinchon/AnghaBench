
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int * cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef double cmsFloat64Number ;
typedef int cmsContext ;
typedef int _cmsTRANSFORM ;


 int _cmsQuickSaturateWord (double) ;
 int cmsUNUSED_PARAMETER (int *) ;

__attribute__((used)) static
cmsUInt8Number* UnrollDouble1Chan(cmsContext ContextID, register _cmsTRANSFORM* info,
                                  register cmsUInt16Number wIn[],
                                  register cmsUInt8Number* accum,
                                  register cmsUInt32Number Stride)
{
    cmsFloat64Number* Inks = (cmsFloat64Number*) accum;

    wIn[0] = wIn[1] = wIn[2] = _cmsQuickSaturateWord(Inks[0] * 65535.0);

    return accum + sizeof(cmsFloat64Number);

    cmsUNUSED_PARAMETER(info);
    cmsUNUSED_PARAMETER(Stride);
}
