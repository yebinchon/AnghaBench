
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int random_nonce (int *) ;

void new_nonce(uint8_t *nonce)
{
    random_nonce(nonce);
}
