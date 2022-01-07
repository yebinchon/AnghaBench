
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct MemBitReader {int dummy; } ;


 int br_bits (struct MemBitReader*,int) ;

__attribute__((used)) static uint32_t br_next_rarvm_number(struct MemBitReader *br)
{
    uint32_t val;
    switch (br_bits(br, 2)) {
    case 0:
        return br_bits(br, 4);
    case 1:
        val = br_bits(br, 8);
        if (val >= 16)
            return val;
        return 0xFFFFFF00 | (val << 4) | br_bits(br, 4);
    case 2:
        return br_bits(br, 16);
    default:
        return br_bits(br, 32);
    }
}
