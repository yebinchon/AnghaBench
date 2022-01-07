
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int UINT64_C (int) ;

__attribute__((used)) static uint64_t iterate48 (unsigned short subi[3])
{
    const uint64_t a = UINT64_C(0x5DEECE66D);
    const unsigned c = 13;
    const uint64_t mask = UINT64_C(0xFFFFFFFFFFFF);

    uint64_t x = ((uint64_t)subi[0] << 32)
               | ((uint32_t)subi[1] << 16)
               | subi[2];

    x *= a;
    x += c;
    x &= mask;

    subi[0] = (x >> 32) & 0xFFFF;
    subi[1] = (x >> 16) & 0xFFFF;
    subi[2] = (x >> 0) & 0XFFFF;

    return x;
}
