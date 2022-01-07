
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsFloat32Number ;


 int _cmsHalf2Float (int ) ;
 int cmsUNUSED_PARAMETER (void const*) ;

__attribute__((used)) static
void fromHLFtoFLT(void* dst, const void* src)
{

       *(cmsFloat32Number*)dst = _cmsHalf2Float(*(cmsUInt16Number*)src);




}
