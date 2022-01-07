
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float cmsUInt8Number ;
typedef int cmsUInt16Number ;
typedef float cmsFloat32Number ;


 int _cmsFloat2Half (float) ;
 int cmsUNUSED_PARAMETER (void const*) ;

__attribute__((used)) static
void from8toHLF(void* dst, const void* src)
{

       cmsFloat32Number n = (*(cmsUInt8Number*)src) / 255.0f;
       *(cmsUInt16Number*)dst = _cmsFloat2Half(n);




}
