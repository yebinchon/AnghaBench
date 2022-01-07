
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef float cmsFloat32Number ;


 int _cmsQuickSaturateByte (float) ;

__attribute__((used)) static
void fromFLTto8(void* dst, const void* src)
{
    cmsFloat32Number n = *(cmsFloat32Number*)src;
    *(cmsUInt8Number*)dst = _cmsQuickSaturateByte(n * 255.0f);
}
