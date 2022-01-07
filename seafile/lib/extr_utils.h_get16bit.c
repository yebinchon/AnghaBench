
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int ntohs (int ) ;

__attribute__((used)) static inline uint16_t get16bit(const uint8_t **ptr)
{
    uint16_t val_h = ntohs (*((uint16_t *)(*ptr)));
    (*ptr)+=2;
    return val_h;
}
