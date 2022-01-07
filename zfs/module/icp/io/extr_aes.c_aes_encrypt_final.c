
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int gcm_ctx_t ;
typedef int ctr_ctx_t ;
typedef int crypto_req_handle_t ;
struct TYPE_10__ {scalar_t__ cd_format; size_t cd_offset; size_t cd_length; } ;
typedef TYPE_1__ crypto_data_t ;
struct TYPE_11__ {TYPE_3__* cc_provider_private; } ;
typedef TYPE_2__ crypto_ctx_t ;
typedef int ccm_ctx_t ;
struct TYPE_12__ {int ac_flags; scalar_t__ ac_remainder_len; } ;
typedef TYPE_3__ aes_ctx_t ;


 int AES_BLOCK_LEN ;
 int ASSERT (int ) ;
 int CCM_MODE ;
 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_DATA_LEN_RANGE ;
 scalar_t__ CRYPTO_DATA_RAW ;
 scalar_t__ CRYPTO_DATA_UIO ;
 int CRYPTO_SUCCESS ;
 int CTR_MODE ;
 int GCM_MODE ;
 int GMAC_MODE ;
 int aes_copy_block ;
 int aes_encrypt_block ;
 int aes_free_context (TYPE_2__*) ;
 int aes_xor_block ;
 int ccm_encrypt_final (int *,TYPE_1__*,int ,int ,int ) ;
 int ctr_mode_final (int *,TYPE_1__*,int ) ;
 int gcm_encrypt_final (int *,TYPE_1__*,int ,int ,int ,int ) ;

__attribute__((used)) static int
aes_encrypt_final(crypto_ctx_t *ctx, crypto_data_t *data,
    crypto_req_handle_t req)
{
 aes_ctx_t *aes_ctx;
 int ret;

 ASSERT(ctx->cc_provider_private != ((void*)0));
 aes_ctx = ctx->cc_provider_private;

 if (data->cd_format != CRYPTO_DATA_RAW &&
     data->cd_format != CRYPTO_DATA_UIO) {
  return (CRYPTO_ARGUMENTS_BAD);
 }

 if (aes_ctx->ac_flags & CTR_MODE) {
  if (aes_ctx->ac_remainder_len > 0) {
   ret = ctr_mode_final((ctr_ctx_t *)aes_ctx, data,
       aes_encrypt_block);
   if (ret != CRYPTO_SUCCESS)
    return (ret);
  }
 } else if (aes_ctx->ac_flags & CCM_MODE) {
  ret = ccm_encrypt_final((ccm_ctx_t *)aes_ctx, data,
      AES_BLOCK_LEN, aes_encrypt_block, aes_xor_block);
  if (ret != CRYPTO_SUCCESS) {
   return (ret);
  }
 } else if (aes_ctx->ac_flags & (GCM_MODE|GMAC_MODE)) {
  size_t saved_offset = data->cd_offset;

  ret = gcm_encrypt_final((gcm_ctx_t *)aes_ctx, data,
      AES_BLOCK_LEN, aes_encrypt_block, aes_copy_block,
      aes_xor_block);
  if (ret != CRYPTO_SUCCESS) {
   return (ret);
  }
  data->cd_length = data->cd_offset - saved_offset;
  data->cd_offset = saved_offset;
 } else {





  if (aes_ctx->ac_remainder_len > 0) {
   return (CRYPTO_DATA_LEN_RANGE);
  }
  data->cd_length = 0;
 }

 (void) aes_free_context(ctx);

 return (CRYPTO_SUCCESS);
}
