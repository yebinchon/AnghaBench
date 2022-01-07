
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int crypto_verify_32 (int const*,int const*) ;

int public_key_cmp(const uint8_t *pk1, const uint8_t *pk2)
{
    return crypto_verify_32(pk1, pk2);
}
