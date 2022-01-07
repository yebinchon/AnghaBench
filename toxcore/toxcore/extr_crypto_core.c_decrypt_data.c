
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int crypto_box_BEFORENMBYTES ;
 int decrypt_data_symmetric (int *,int const*,int const*,int ,int *) ;
 int encrypt_precompute (int const*,int const*,int *) ;
 int sodium_memzero (int *,int) ;

int decrypt_data(const uint8_t *public_key, const uint8_t *secret_key, const uint8_t *nonce,
                 const uint8_t *encrypted, uint32_t length, uint8_t *plain)
{
    if (!public_key || !secret_key)
        return -1;

    uint8_t k[crypto_box_BEFORENMBYTES];
    encrypt_precompute(public_key, secret_key, k);
    int ret = decrypt_data_symmetric(k, nonce, encrypted, length, plain);
    sodium_memzero(k, sizeof k);
    return ret;
}
