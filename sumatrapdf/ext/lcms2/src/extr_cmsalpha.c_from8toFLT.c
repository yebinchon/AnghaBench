
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float cmsUInt8Number ;
typedef float cmsFloat32Number ;



__attribute__((used)) static
void from8toFLT(void* dst, const void* src)
{
       *(cmsFloat32Number*)dst = (*(cmsUInt8Number*)src) / 255.0f;
}
