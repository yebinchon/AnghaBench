
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef void* off_t ;
typedef int ctr_ctx_t ;
typedef int crypto_req_handle_t ;
struct TYPE_16__ {size_t cd_length; void* cd_offset; int cd_format; } ;
typedef TYPE_1__ crypto_data_t ;
struct TYPE_17__ {TYPE_3__* cc_provider_private; } ;
typedef TYPE_2__ crypto_ctx_t ;
struct TYPE_18__ {size_t ac_remainder_len; int ac_flags; } ;
typedef TYPE_3__ aes_ctx_t ;


 int AES_ARG_INPLACE (TYPE_1__*,TYPE_1__*) ;
 int AES_BLOCK_LEN ;
 int ASSERT (int ) ;
 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_BUFFER_TOO_SMALL ;


 int CRYPTO_SUCCESS ;
 int CTR_MODE ;
 int aes_copy_block64 ;
 int aes_encrypt_block ;
 int aes_encrypt_contiguous_blocks ;
 int crypto_update_iov (TYPE_3__*,TYPE_1__*,TYPE_1__*,int ,int ) ;
 int crypto_update_uio (TYPE_3__*,TYPE_1__*,TYPE_1__*,int ,int ) ;
 int ctr_mode_final (int *,TYPE_1__*,int ) ;

__attribute__((used)) static int
aes_encrypt_update(crypto_ctx_t *ctx, crypto_data_t *plaintext,
    crypto_data_t *ciphertext, crypto_req_handle_t req)
{
 off_t saved_offset;
 size_t saved_length, out_len;
 int ret = CRYPTO_SUCCESS;
 aes_ctx_t *aes_ctx;

 ASSERT(ctx->cc_provider_private != ((void*)0));
 aes_ctx = ctx->cc_provider_private;

 AES_ARG_INPLACE(plaintext, ciphertext);


 out_len = aes_ctx->ac_remainder_len;
 out_len += plaintext->cd_length;
 out_len &= ~(AES_BLOCK_LEN - 1);


 if (ciphertext->cd_length < out_len) {
  ciphertext->cd_length = out_len;
  return (CRYPTO_BUFFER_TOO_SMALL);
 }

 saved_offset = ciphertext->cd_offset;
 saved_length = ciphertext->cd_length;




 switch (plaintext->cd_format) {
 case 129:
  ret = crypto_update_iov(ctx->cc_provider_private,
      plaintext, ciphertext, aes_encrypt_contiguous_blocks,
      aes_copy_block64);
  break;
 case 128:
  ret = crypto_update_uio(ctx->cc_provider_private,
      plaintext, ciphertext, aes_encrypt_contiguous_blocks,
      aes_copy_block64);
  break;
 default:
  ret = CRYPTO_ARGUMENTS_BAD;
 }







 if ((aes_ctx->ac_flags & CTR_MODE) && (aes_ctx->ac_remainder_len > 0)) {
  ret = ctr_mode_final((ctr_ctx_t *)aes_ctx,
      ciphertext, aes_encrypt_block);
 }

 if (ret == CRYPTO_SUCCESS) {
  if (plaintext != ciphertext)
   ciphertext->cd_length =
       ciphertext->cd_offset - saved_offset;
 } else {
  ciphertext->cd_length = saved_length;
 }
 ciphertext->cd_offset = saved_offset;

 return (ret);
}
