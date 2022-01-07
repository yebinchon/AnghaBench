
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dk; int ek; } ;
typedef TYPE_1__ des_key ;


 int CRYPT_INVALID_KEYSIZE ;
 int CRYPT_INVALID_ROUNDS ;
 int CRYPT_OK ;
 int DE1 ;
 int EN0 ;
 int deskey (unsigned char const*,int ,int ) ;

int des_setup(const unsigned char *key, int keylen, int num_rounds, des_key *des)
{
    if (num_rounds != 0 && num_rounds != 16) {
        return CRYPT_INVALID_ROUNDS;
    }

    if (keylen != 8) {
        return CRYPT_INVALID_KEYSIZE;
    }

    deskey(key, EN0, des->ek);
    deskey(key, DE1, des->dk);

    return CRYPT_OK;
}
