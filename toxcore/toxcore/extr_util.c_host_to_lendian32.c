
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int memcpy (int *,int*,int) ;

void host_to_lendian32(uint8_t *dest, uint32_t num)
{




    memcpy(dest, &num, sizeof(uint32_t));
}
