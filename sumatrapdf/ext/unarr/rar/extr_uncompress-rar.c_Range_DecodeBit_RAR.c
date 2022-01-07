
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UInt32 ;


 scalar_t__ PPMD_BIN_SCALE ;
 int Range_Decode_RAR (void*,scalar_t__,scalar_t__) ;
 scalar_t__ Range_GetThreshold (void*,scalar_t__) ;

__attribute__((used)) static UInt32 Range_DecodeBit_RAR(void *p, UInt32 size0)
{
    UInt32 value = Range_GetThreshold(p, PPMD_BIN_SCALE);
    UInt32 bit = value < size0 ? 0 : 1;
    if (!bit)
        Range_Decode_RAR(p, 0, size0);
    else
        Range_Decode_RAR(p, size0, PPMD_BIN_SCALE - size0);
    return bit;
}
