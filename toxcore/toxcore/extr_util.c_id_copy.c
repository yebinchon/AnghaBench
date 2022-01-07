
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (int *,int const*,int ) ;

uint32_t id_copy(uint8_t *dest, const uint8_t *src)
{
    memcpy(dest, src, crypto_box_PUBLICKEYBYTES);
    return crypto_box_PUBLICKEYBYTES;
}
