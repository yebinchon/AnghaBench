
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int gcm_ctx_t ;
typedef int crypto_req_handle_t ;
struct TYPE_15__ {int cd_length; size_t cd_offset; } ;
typedef TYPE_1__ crypto_data_t ;
struct TYPE_16__ {TYPE_3__* cc_provider_private; } ;
typedef TYPE_2__ crypto_ctx_t ;
typedef int ccm_ctx_t ;
struct TYPE_17__ {int ac_flags; size_t ac_tag_len; scalar_t__ ac_remainder_len; int ac_mac_len; } ;
typedef TYPE_3__ aes_ctx_t ;


 int AES_ARG_INPLACE (TYPE_1__*,TYPE_1__*) ;
 int AES_BLOCK_LEN ;
 int ASSERT (int) ;

 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_BUFFER_TOO_SMALL ;
 int CRYPTO_DATA_LEN_RANGE ;
 int CRYPTO_FAILED ;
 int CRYPTO_SUCCESS ;
 int CTR_MODE ;


 int aes_copy_block ;
 int aes_encrypt_block ;
 int aes_encrypt_update (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;
 int aes_free_context (TYPE_2__*) ;
 int aes_xor_block ;
 int ccm_encrypt_final (int *,TYPE_1__*,int,int ,int ) ;
 int gcm_encrypt_final (int *,TYPE_1__*,int,int ,int ,int ) ;

__attribute__((used)) static int
aes_encrypt(crypto_ctx_t *ctx, crypto_data_t *plaintext,
    crypto_data_t *ciphertext, crypto_req_handle_t req)
{
 int ret = CRYPTO_FAILED;

 aes_ctx_t *aes_ctx;
 size_t saved_length, saved_offset, length_needed;

 ASSERT(ctx->cc_provider_private != ((void*)0));
 aes_ctx = ctx->cc_provider_private;





 if (((aes_ctx->ac_flags & (CTR_MODE|130|129|128))
     == 0) && (plaintext->cd_length & (AES_BLOCK_LEN - 1)) != 0)
  return (CRYPTO_DATA_LEN_RANGE);

 AES_ARG_INPLACE(plaintext, ciphertext);





 switch (aes_ctx->ac_flags & (130|129|128)) {
 case 130:
  length_needed = plaintext->cd_length + aes_ctx->ac_mac_len;
  break;
 case 129:
  length_needed = plaintext->cd_length + aes_ctx->ac_tag_len;
  break;
 case 128:
  if (plaintext->cd_length != 0)
   return (CRYPTO_ARGUMENTS_BAD);

  length_needed = aes_ctx->ac_tag_len;
  break;
 default:
  length_needed = plaintext->cd_length;
 }

 if (ciphertext->cd_length < length_needed) {
  ciphertext->cd_length = length_needed;
  return (CRYPTO_BUFFER_TOO_SMALL);
 }

 saved_length = ciphertext->cd_length;
 saved_offset = ciphertext->cd_offset;




 ret = aes_encrypt_update(ctx, plaintext, ciphertext, req);
 if (ret != CRYPTO_SUCCESS) {
  return (ret);
 }





 if (aes_ctx->ac_flags & 130) {







  ciphertext->cd_offset = ciphertext->cd_length;
  ciphertext->cd_length = saved_length - ciphertext->cd_length;
  ret = ccm_encrypt_final((ccm_ctx_t *)aes_ctx, ciphertext,
      AES_BLOCK_LEN, aes_encrypt_block, aes_xor_block);
  if (ret != CRYPTO_SUCCESS) {
   return (ret);
  }

  if (plaintext != ciphertext) {
   ciphertext->cd_length =
       ciphertext->cd_offset - saved_offset;
  }
  ciphertext->cd_offset = saved_offset;
 } else if (aes_ctx->ac_flags & (129|128)) {







  ciphertext->cd_offset = ciphertext->cd_length;
  ciphertext->cd_length = saved_length - ciphertext->cd_length;
  ret = gcm_encrypt_final((gcm_ctx_t *)aes_ctx, ciphertext,
      AES_BLOCK_LEN, aes_encrypt_block, aes_copy_block,
      aes_xor_block);
  if (ret != CRYPTO_SUCCESS) {
   return (ret);
  }

  if (plaintext != ciphertext) {
   ciphertext->cd_length =
       ciphertext->cd_offset - saved_offset;
  }
  ciphertext->cd_offset = saved_offset;
 }

 ASSERT(aes_ctx->ac_remainder_len == 0);
 (void) aes_free_context(ctx);

 return (ret);
}
