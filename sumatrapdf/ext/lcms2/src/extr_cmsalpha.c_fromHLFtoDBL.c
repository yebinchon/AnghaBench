
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef scalar_t__ cmsFloat64Number ;


 scalar_t__ _cmsHalf2Float (int ) ;
 int cmsUNUSED_PARAMETER (void const*) ;

__attribute__((used)) static
void fromHLFtoDBL(void* dst, const void* src)
{

       *(cmsFloat64Number*)dst = (cmsFloat64Number)_cmsHalf2Float(*(cmsUInt16Number*)src);




}
