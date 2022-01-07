
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint16_t ;



__attribute__((used)) static inline uint16_t get_16(const uint16_t * p)
{




    const uint8_t *pp = (const uint8_t *)p;
    return pp[0] + ((uint16_t)pp[1] << 8);

}
