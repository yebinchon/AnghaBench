
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline void leb128_write(uint32_t v, uint8_t *p)
{
    for(;;)
    {
        *p = v & 0x7F;
        v >>= 7;
        if(v == 0)
            break;
        *p++ |= 0x80;
    }
}
