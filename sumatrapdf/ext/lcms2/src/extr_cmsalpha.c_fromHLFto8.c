
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int cmsUInt16Number ;
typedef float cmsFloat32Number ;


 float _cmsHalf2Float (int ) ;
 int _cmsQuickSaturateByte (float) ;
 int cmsUNUSED_PARAMETER (void const*) ;

__attribute__((used)) static
void fromHLFto8(void* dst, const void* src)
{

       cmsFloat32Number n = _cmsHalf2Float(*(cmsUInt16Number*)src);
       *(cmsUInt8Number*)dst = _cmsQuickSaturateByte(n * 255.0f);





}
