
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast16_t ;
typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 int crypto_box_NONCEBYTES ;

void increment_nonce(uint8_t *nonce)
{






    uint32_t i = crypto_box_NONCEBYTES;
    uint_fast16_t carry = 1U;

    for (; i != 0; --i) {
        carry += (uint_fast16_t) nonce[i - 1];
        nonce[i - 1] = (uint8_t) carry;
        carry >>= 8;
    }
}
