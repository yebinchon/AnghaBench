
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint32_t ;
typedef int uint16_t ;


 int const get_16 (int const*) ;

__attribute__((used)) static inline uint32_t get_32(const uint32_t * p)
{




    const uint16_t *pp = (const uint16_t *)p;
    return get_16(&pp[0]) + ((uint32_t)get_16(&pp[1]) << 16);

}
