
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;


 int CHANGE_ENDIAN (int ) ;

__attribute__((used)) static
void from16to16(void* dst, const void* src)
{
    cmsUInt16Number n = *(cmsUInt16Number*)src;
    *(cmsUInt16Number*)dst = CHANGE_ENDIAN(n);
}
