
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int htonl (int ) ;

__attribute__((used)) static inline void put32bit(uint8_t **ptr,uint32_t val)
{
    uint32_t val_n = htonl (val);
    *((uint32_t *)(*ptr)) = val_n;
    (*ptr)+=4;
}
