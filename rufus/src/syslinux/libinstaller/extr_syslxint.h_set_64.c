
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int set_32 (int *,int) ;

__attribute__((used)) static inline void set_64(uint64_t *p, uint64_t v)
{




    uint32_t *pp = (uint32_t *) p;
    set_32(&pp[0], v);
    set_32(&pp[1], v >> 32);

}
