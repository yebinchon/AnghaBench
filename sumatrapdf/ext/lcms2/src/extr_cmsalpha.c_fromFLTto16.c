
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef float cmsFloat32Number ;


 int _cmsQuickSaturateWord (float) ;

__attribute__((used)) static
void fromFLTto16(void* dst, const void* src)
{
    cmsFloat32Number n = *(cmsFloat32Number*)src;
    *(cmsUInt16Number*)dst = _cmsQuickSaturateWord(n * 65535.0f);
}
