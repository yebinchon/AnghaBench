
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef float cmsFloat32Number ;


 float CHANGE_ENDIAN (int ) ;
 int _cmsFloat2Half (float) ;
 int cmsUNUSED_PARAMETER (void const*) ;

__attribute__((used)) static
void from16SEtoHLF(void* dst, const void* src)
{

    cmsFloat32Number n = (CHANGE_ENDIAN(*(cmsUInt16Number*)src)) / 65535.0f;
    *(cmsUInt16Number*)dst = _cmsFloat2Half(n);




}
