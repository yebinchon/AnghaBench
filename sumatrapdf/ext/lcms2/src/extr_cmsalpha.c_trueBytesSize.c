
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt32Number ;


 scalar_t__ T_BYTES (scalar_t__) ;

__attribute__((used)) static
cmsUInt32Number trueBytesSize(cmsUInt32Number Format)
{
    cmsUInt32Number fmt_bytes = T_BYTES(Format);


    if (fmt_bytes == 0)
        return sizeof(double);


    return fmt_bytes;
}
