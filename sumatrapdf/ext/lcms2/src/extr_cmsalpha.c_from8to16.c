
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int cmsUInt16Number ;


 int FROM_8_TO_16 (int ) ;

__attribute__((used)) static
void from8to16(void* dst, const void* src)
{
       cmsUInt8Number n = *(cmsUInt8Number*)src;
       *(cmsUInt16Number*) dst = FROM_8_TO_16(n);
}
