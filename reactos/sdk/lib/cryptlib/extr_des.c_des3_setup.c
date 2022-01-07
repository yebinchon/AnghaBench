
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dk; int * ek; } ;
typedef TYPE_1__ des3_key ;


 int CRYPT_INVALID_KEYSIZE ;
 int CRYPT_INVALID_ROUNDS ;
 int CRYPT_OK ;
 int DE1 ;
 int EN0 ;
 int deskey (unsigned char const*,int ,int ) ;

int des3_setup(const unsigned char *key, int keylen, int num_rounds, des3_key *des3)
{
    if(num_rounds != 0 && num_rounds != 16) {
        return CRYPT_INVALID_ROUNDS;
    }

    if (keylen != 24) {
        return CRYPT_INVALID_KEYSIZE;
    }

    deskey(key, EN0, des3->ek[0]);
    deskey(key+8, DE1, des3->ek[1]);
    deskey(key+16, EN0, des3->ek[2]);

    deskey(key, DE1, des3->dk[2]);
    deskey(key+8, EN0, des3->dk[1]);
    deskey(key+16, DE1, des3->dk[0]);

    return CRYPT_OK;
}
