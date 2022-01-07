
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef double cmsFloat64Number ;


 int _cmsQuickSaturateByte (double) ;

__attribute__((used)) static
void fromDBLto8(void* dst, const void* src)
{
       cmsFloat64Number n = *(cmsFloat64Number*)src;
       *(cmsUInt8Number*)dst = _cmsQuickSaturateByte(n * 255.0);
}
