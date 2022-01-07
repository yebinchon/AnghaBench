
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ crypto_box_BOXZEROBYTES ;
 scalar_t__ crypto_box_MACBYTES ;
 scalar_t__ crypto_box_ZEROBYTES ;
 scalar_t__ crypto_box_afternm (int const*,int const*,scalar_t__,int const*,int const*) ;
 int memcpy (int const*,int const*,scalar_t__) ;
 int memset (int const*,int ,scalar_t__) ;

int encrypt_data_symmetric(const uint8_t *secret_key, const uint8_t *nonce, const uint8_t *plain, uint32_t length,
                           uint8_t *encrypted)
{
    if (length == 0 || !secret_key || !nonce || !plain || !encrypted)
        return -1;

    uint8_t temp_plain[length + crypto_box_ZEROBYTES];
    uint8_t temp_encrypted[length + crypto_box_MACBYTES + crypto_box_BOXZEROBYTES];

    memset(temp_plain, 0, crypto_box_ZEROBYTES);
    memcpy(temp_plain + crypto_box_ZEROBYTES, plain, length);

    if (crypto_box_afternm(temp_encrypted, temp_plain, length + crypto_box_ZEROBYTES, nonce, secret_key) != 0)
        return -1;


    memcpy(encrypted, temp_encrypted + crypto_box_BOXZEROBYTES, length + crypto_box_MACBYTES);
    return length + crypto_box_MACBYTES;
}
