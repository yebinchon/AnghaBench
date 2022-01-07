
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int set_16 (int *,int) ;

__attribute__((used)) static inline void set_32(uint32_t *p, uint32_t v)
{




    uint16_t *pp = (uint16_t *) p;
    set_16(&pp[0], v);
    set_16(&pp[1], v >> 16);

}
