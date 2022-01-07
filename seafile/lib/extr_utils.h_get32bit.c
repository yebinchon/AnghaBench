
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int ntohl (int ) ;

__attribute__((used)) static inline uint32_t get32bit(const uint8_t **ptr)
{
    uint32_t val_h = ntohl (*((uint32_t *)(*ptr)));
    (*ptr)+=4;
    return val_h;
}
