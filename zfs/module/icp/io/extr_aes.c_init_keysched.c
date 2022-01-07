
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ck_format; int ck_length; int ck_data; } ;
typedef TYPE_1__ crypto_key_t ;


 int AES_MAXBITS ;
 int AES_MINBITS ;

 int CRYPTO_KEY_SIZE_RANGE ;
 int CRYPTO_KEY_TYPE_INCONSISTENT ;
 int CRYPTO_SUCCESS ;
 int aes_init_keysched (int ,int,void*) ;

__attribute__((used)) static int
init_keysched(crypto_key_t *key, void *newbie)
{



 switch (key->ck_format) {
 case 128:
  if (key->ck_length < AES_MINBITS ||
      key->ck_length > AES_MAXBITS) {
   return (CRYPTO_KEY_SIZE_RANGE);
  }


  if ((key->ck_length & 63) != 0)
   return (CRYPTO_KEY_SIZE_RANGE);
  break;
 default:
  return (CRYPTO_KEY_TYPE_INCONSISTENT);
 }

 aes_init_keysched(key->ck_data, key->ck_length, newbie);
 return (CRYPTO_SUCCESS);
}
