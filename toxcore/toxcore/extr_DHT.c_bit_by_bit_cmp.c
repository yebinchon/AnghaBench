
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 unsigned int crypto_box_PUBLICKEYBYTES ;

__attribute__((used)) static unsigned int bit_by_bit_cmp(const uint8_t *pk1, const uint8_t *pk2)
{
    unsigned int i, j = 0;

    for (i = 0; i < crypto_box_PUBLICKEYBYTES; ++i) {
        if (pk1[i] == pk2[i])
            continue;

        for (j = 0; j < 8; ++j) {
            if ((pk1[i] & (1 << (7 - j))) != (pk2[i] & (1 << (7 - j))))
                break;
        }

        break;
    }

    return i * 8 + j;
}
