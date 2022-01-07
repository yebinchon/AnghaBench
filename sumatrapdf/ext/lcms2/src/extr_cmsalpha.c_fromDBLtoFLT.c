
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsFloat64Number ;
typedef scalar_t__ cmsFloat32Number ;



__attribute__((used)) static
void fromDBLtoFLT(void* dst, const void* src)
{
       cmsFloat64Number n = *(cmsFloat64Number*)src;
       *(cmsFloat32Number*)dst = (cmsFloat32Number) n;
}
