
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsFloat64Number ;
typedef scalar_t__ cmsFloat32Number ;



__attribute__((used)) static
void fromFLTtoDBL(void* dst, const void* src)
{
    cmsFloat32Number n = *(cmsFloat32Number*)src;
    *(cmsFloat64Number*)dst = (cmsFloat64Number)n;
}
