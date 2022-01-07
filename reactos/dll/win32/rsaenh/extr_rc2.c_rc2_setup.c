
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* xkey; } ;
typedef TYPE_1__ rc2_key ;


 int CRYPT_INVALID_KEYSIZE ;
 int CRYPT_INVALID_ROUNDS ;
 int CRYPT_OK ;
 unsigned char* permute ;

int rc2_setup(const unsigned char *key, int keylen, int bits, int rounds, rc2_key *rc2)
{
   unsigned *xkey = rc2->xkey;
   unsigned char tmp[128];
   unsigned T8, TM;
   int i;

   if (keylen < 5 || keylen > 128) {
      return CRYPT_INVALID_KEYSIZE;
   }

   if (rounds != 0 && rounds != 16) {
      return CRYPT_INVALID_ROUNDS;
   }
   if (bits <= 0) bits = keylen << 3;
   if (bits > 1024) bits = 1024;

   for (i = 0; i < keylen; i++) {
       tmp[i] = key[i] & 255;
   }


    if (keylen < 128) {
        for (i = keylen; i < 128; i++) {
            tmp[i] = permute[(tmp[i - 1] + tmp[i - keylen]) & 255];
        }
    }



    T8 = (unsigned)(bits+7)>>3;
    TM = (255 >> (unsigned)(7 & -bits));
    tmp[128 - T8] = permute[tmp[128 - T8] & TM];
    for (i = 127 - T8; i >= 0; i--) {
        tmp[i] = permute[tmp[i + 1] ^ tmp[i + T8]];
    }


    for (i = 0; i < 64; i++) {
        xkey[i] = (unsigned)tmp[2*i] + ((unsigned)tmp[2*i+1] << 8);
    }

    return CRYPT_OK;
}
