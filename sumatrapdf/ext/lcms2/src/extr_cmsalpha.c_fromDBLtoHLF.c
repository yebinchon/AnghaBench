
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsFloat64Number ;
typedef int cmsFloat32Number ;


 int _cmsFloat2Half (int ) ;
 int cmsUNUSED_PARAMETER (void const*) ;

__attribute__((used)) static
void fromDBLtoHLF(void* dst, const void* src)
{

       cmsFloat32Number n = (cmsFloat32Number) *(cmsFloat64Number*)src;
       *(cmsUInt16Number*)dst = _cmsFloat2Half(n);




}
