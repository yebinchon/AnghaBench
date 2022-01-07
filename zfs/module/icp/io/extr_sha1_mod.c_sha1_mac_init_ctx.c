
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int hc_ocontext; int hc_icontext; } ;
typedef TYPE_1__ sha1_hmac_ctx_t ;


 int SHA1Init (int *) ;
 int SHA1Update (int *,int *,int ) ;
 int SHA1_HMAC_BLOCK_SIZE ;
 int SHA1_HMAC_INTS_PER_BLOCK ;
 int bcopy (void*,int*,int) ;
 int bzero (int*,int ) ;

__attribute__((used)) static void
sha1_mac_init_ctx(sha1_hmac_ctx_t *ctx, void *keyval, uint_t length_in_bytes)
{
 uint32_t ipad[SHA1_HMAC_INTS_PER_BLOCK];
 uint32_t opad[SHA1_HMAC_INTS_PER_BLOCK];
 uint_t i;

 bzero(ipad, SHA1_HMAC_BLOCK_SIZE);
 bzero(opad, SHA1_HMAC_BLOCK_SIZE);

 bcopy(keyval, ipad, length_in_bytes);
 bcopy(keyval, opad, length_in_bytes);


 for (i = 0; i < SHA1_HMAC_INTS_PER_BLOCK; i++) {
  ipad[i] ^= 0x36363636;
  opad[i] ^= 0x5c5c5c5c;
 }


 SHA1Init(&ctx->hc_icontext);
 SHA1Update(&ctx->hc_icontext, (uint8_t *)ipad, SHA1_HMAC_BLOCK_SIZE);


 SHA1Init(&ctx->hc_ocontext);
 SHA1Update(&ctx->hc_ocontext, (uint8_t *)opad, SHA1_HMAC_BLOCK_SIZE);
}
