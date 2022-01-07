
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sha1_ctx_t ;
typedef int crypto_req_handle_t ;
struct TYPE_9__ {scalar_t__ iov_base; } ;
struct TYPE_10__ {scalar_t__ cd_length; int cd_format; int cd_offset; TYPE_1__ cd_raw; } ;
typedef TYPE_2__ crypto_data_t ;
struct TYPE_11__ {int * cc_provider_private; } ;
typedef TYPE_3__ crypto_ctx_t ;
struct TYPE_12__ {int sc_sha1_ctx; } ;


 int ASSERT (int ) ;
 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_BUFFER_TOO_SMALL ;


 int CRYPTO_SUCCESS ;
 TYPE_7__* PROV_SHA1_CTX (TYPE_3__*) ;
 int SHA1Final (unsigned char*,int *) ;
 scalar_t__ SHA1_DIGEST_LENGTH ;
 int kmem_free (int *,int) ;
 int sha1_digest_final_uio (int *,TYPE_2__*,scalar_t__,int *) ;

__attribute__((used)) static int
sha1_digest_final(crypto_ctx_t *ctx, crypto_data_t *digest,
    crypto_req_handle_t req)
{
 int ret = CRYPTO_SUCCESS;

 ASSERT(ctx->cc_provider_private != ((void*)0));





 if ((digest->cd_length == 0) ||
     (digest->cd_length < SHA1_DIGEST_LENGTH)) {
  digest->cd_length = SHA1_DIGEST_LENGTH;
  return (CRYPTO_BUFFER_TOO_SMALL);
 }




 switch (digest->cd_format) {
 case 129:
  SHA1Final((unsigned char *)digest->cd_raw.iov_base +
      digest->cd_offset, &PROV_SHA1_CTX(ctx)->sc_sha1_ctx);
  break;
 case 128:
  ret = sha1_digest_final_uio(&PROV_SHA1_CTX(ctx)->sc_sha1_ctx,
      digest, SHA1_DIGEST_LENGTH, ((void*)0));
  break;
 default:
  ret = CRYPTO_ARGUMENTS_BAD;
 }



 if (ret == CRYPTO_SUCCESS) {
  digest->cd_length = SHA1_DIGEST_LENGTH;
 } else {
  digest->cd_length = 0;
 }

 kmem_free(ctx->cc_provider_private, sizeof (sha1_ctx_t));
 ctx->cc_provider_private = ((void*)0);

 return (ret);
}
