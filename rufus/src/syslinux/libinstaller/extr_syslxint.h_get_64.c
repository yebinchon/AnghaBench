
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint64_t ;
typedef int uint32_t ;


 int const get_32 (int const*) ;

__attribute__((used)) static inline uint64_t get_64(const uint64_t * p)
{




    const uint32_t *pp = (const uint32_t *)p;
    return get_32(&pp[0]) + ((uint64_t)get_32(&pp[1]) << 32);

}
