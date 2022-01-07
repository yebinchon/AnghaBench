
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) __inline static uint32_t galois_double_mask32(uint32_t v) {
    v &= 0x80808080;
    return (v << 1) - (v >> 7);
}
