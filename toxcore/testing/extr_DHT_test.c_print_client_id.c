
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;


 size_t crypto_box_PUBLICKEYBYTES ;
 int printf (char*,int ) ;

void print_client_id(uint8_t *public_key)
{
    uint32_t j;

    for (j = 0; j < crypto_box_PUBLICKEYBYTES; j++) {
        printf("%02hhX", public_key[j]);
    }
}
