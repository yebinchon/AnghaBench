
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline void set_16(uint16_t *p, uint16_t v)
{




    uint8_t *pp = (uint8_t *) p;
    pp[0] = v;
    pp[1] = v >> 8;

}
