
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double cmsUInt8Number ;
typedef double cmsFloat64Number ;



__attribute__((used)) static
void from8toDBL(void* dst, const void* src)
{
       *(cmsFloat64Number*)dst = (*(cmsUInt8Number*)src) / 255.0;
}
