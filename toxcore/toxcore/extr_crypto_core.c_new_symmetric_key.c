
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int crypto_box_KEYBYTES ;
 int randombytes (int *,int ) ;

void new_symmetric_key(uint8_t *key)
{
    randombytes(key, crypto_box_KEYBYTES);
}
