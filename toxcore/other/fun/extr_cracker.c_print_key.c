
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int printf (char*,int ) ;

void print_key(uint8_t *client_id)
{
    uint32_t j;

    for (j = 0; j < 32; j++) {
        printf("%02hhX", client_id[j]);
    }
}
