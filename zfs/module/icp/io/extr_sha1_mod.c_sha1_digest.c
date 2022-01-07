
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sha1_ctx_t ;
typedef int crypto_req_handle_t ;
struct TYPE_11__ {scalar_t__ iov_base; } ;
struct TYPE_12__ {scalar_t__ cd_length; int cd_format; int cd_offset; TYPE_1__ cd_raw; } ;
typedef TYPE_2__ crypto_data_t ;
struct TYPE_13__ {int * cc_provider_private; } ;
typedef TYPE_3__ crypto_ctx_t ;
struct TYPE_14__ {int sc_sha1_ctx; } ;


 int ASSERT (int ) ;
 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_BUFFER_TOO_SMALL ;


 int CRYPTO_SUCCESS ;
 TYPE_9__* PROV_SHA1_CTX (TYPE_3__*) ;
 int SHA1Final (unsigned char*,int *) ;
 int SHA1Update (int *,int *,scalar_t__) ;
 scalar_t__ SHA1_DIGEST_LENGTH ;
 int kmem_free (int *,int) ;
 int sha1_digest_final_uio (int *,TYPE_2__*,scalar_t__,int *) ;
 int sha1_digest_update_uio (int *,TYPE_2__*) ;

__attribute__((used)) static int
sha1_digest(crypto_ctx_t *ctx, crypto_data_t *data, crypto_data_t *digest,
    crypto_req_handle_t req)
{
 int ret = CRYPTO_SUCCESS;

 ASSERT(ctx->cc_provider_private != ((void*)0));





 if ((digest->cd_length == 0) ||
     (digest->cd_length < SHA1_DIGEST_LENGTH)) {
  digest->cd_length = SHA1_DIGEST_LENGTH;
  return (CRYPTO_BUFFER_TOO_SMALL);
 }




 switch (data->cd_format) {
 case 129:
  SHA1Update(&PROV_SHA1_CTX(ctx)->sc_sha1_ctx,
      (uint8_t *)data->cd_raw.iov_base + data->cd_offset,
      data->cd_length);
  break;
 case 128:
  ret = sha1_digest_update_uio(&PROV_SHA1_CTX(ctx)->sc_sha1_ctx,
      data);
  break;
 default:
  ret = CRYPTO_ARGUMENTS_BAD;
 }

 if (ret != CRYPTO_SUCCESS) {

  kmem_free(ctx->cc_provider_private, sizeof (sha1_ctx_t));
  ctx->cc_provider_private = ((void*)0);
  digest->cd_length = 0;
  return (ret);
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
