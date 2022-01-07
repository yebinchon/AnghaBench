
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {int nr; int type; TYPE_2__ const* ops; } ;
typedef TYPE_1__ aes_key_t ;
struct TYPE_6__ {int (* generate ) (TYPE_1__*,int *,int) ;int needs_byteswap; } ;
typedef TYPE_2__ aes_impl_ops_t ;


 int AES_32BIT_KS ;
 int CRYPTO_BITS2BYTES (int) ;
 scalar_t__ IS_P2ALIGNED (int const*,int) ;
 TYPE_2__* aes_impl_get_ops () ;
 int bcopy (int const*,int *,int) ;
 int htonl (int ) ;
 int stub1 (TYPE_1__*,int *,int) ;

void
aes_init_keysched(const uint8_t *cipherKey, uint_t keyBits, void *keysched)
{
 const aes_impl_ops_t *ops = aes_impl_get_ops();
 aes_key_t *newbie = keysched;
 uint_t keysize, i, j;
 union {
  uint64_t ka64[4];
  uint32_t ka32[8];
  } keyarr;

 switch (keyBits) {
 case 128:
  newbie->nr = 10;
  break;

 case 192:
  newbie->nr = 12;
  break;

 case 256:
  newbie->nr = 14;
  break;

 default:

  return;
 }
 keysize = CRYPTO_BITS2BYTES(keyBits);






 if (!ops->needs_byteswap) {

  if (IS_P2ALIGNED(cipherKey, sizeof (uint64_t))) {
   for (i = 0, j = 0; j < keysize; i++, j += 8) {

    keyarr.ka64[i] = *((uint64_t *)&cipherKey[j]);
   }
  } else {
   bcopy(cipherKey, keyarr.ka32, keysize);
  }
 } else {

  for (i = 0, j = 0; j < keysize; i++, j += 4) {
   keyarr.ka32[i] =
       htonl(*(uint32_t *)(void *)&cipherKey[j]);
  }
 }

 ops->generate(newbie, keyarr.ka32, keyBits);
 newbie->ops = ops;





 newbie->type = AES_32BIT_KS;
}
