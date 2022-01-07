
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int cmsUInt16Number ;


 int CHANGE_ENDIAN (int ) ;
 int FROM_16_TO_8 (int ) ;

__attribute__((used)) static
void from16SEto8(void* dst, const void* src)
{
    cmsUInt16Number n = *(cmsUInt16Number*)src;
    *(cmsUInt8Number*)dst = FROM_16_TO_8(CHANGE_ENDIAN(n));
}
