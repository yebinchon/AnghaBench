
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef float cmsFloat64Number ;


 float CHANGE_ENDIAN (int ) ;

__attribute__((used)) static
void from16SEtoDBL(void* dst, const void* src)
{
    *(cmsFloat64Number*)dst = (CHANGE_ENDIAN(*(cmsUInt16Number*)src)) / 65535.0f;
}
