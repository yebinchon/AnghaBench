
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef void* off_t ;
typedef int gcm_ctx_t ;
typedef int ctr_ctx_t ;
typedef int crypto_spi_ctx_template_t ;
typedef int crypto_session_id_t ;
typedef int crypto_req_handle_t ;
typedef int crypto_provider_handle_t ;
struct TYPE_23__ {int cm_type; } ;
typedef TYPE_1__ crypto_mechanism_t ;
typedef int crypto_key_t ;
struct TYPE_24__ {int cd_length; void* cd_offset; int cd_format; } ;
typedef TYPE_2__ crypto_data_t ;
typedef int ccm_ctx_t ;
struct TYPE_25__ {size_t ac_mac_len; size_t ac_tag_len; scalar_t__ ac_remainder_len; int ac_flags; int ac_keysched_len; struct TYPE_25__* ac_keysched; } ;
typedef TYPE_3__ aes_ctx_t ;


 int AES_ARG_INPLACE (TYPE_2__*,TYPE_2__*) ;
 int AES_BLOCK_LEN ;




 int ASSERT (int) ;
 int B_TRUE ;
 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_BUFFER_TOO_SMALL ;
 int CRYPTO_DATA_LEN_RANGE ;


 int CRYPTO_SUCCESS ;
 int PROVIDER_OWNS_KEY_SCHEDULE ;
 int aes_check_mech_param (TYPE_1__*,int *,int ) ;
 int aes_common_init_ctx (TYPE_3__*,int ,TYPE_1__*,int *,int ,int ) ;
 int aes_copy_block ;
 int aes_copy_block64 ;
 int aes_encrypt_block ;
 int aes_encrypt_contiguous_blocks ;
 int aes_xor_block ;
 int bzero (TYPE_3__*,int) ;
 int ccm_encrypt_final (int *,TYPE_2__*,int ,int ,int ) ;
 int crypto_kmflag (int ) ;
 int crypto_update_iov (TYPE_3__*,TYPE_2__*,TYPE_2__*,int ,int ) ;
 int crypto_update_uio (TYPE_3__*,TYPE_2__*,TYPE_2__*,int ,int ) ;
 int ctr_mode_final (int *,TYPE_2__*,int ) ;
 int gcm_encrypt_final (int *,TYPE_2__*,int ,int ,int ,int ) ;
 int kmem_free (TYPE_3__*,int) ;

__attribute__((used)) static int
aes_encrypt_atomic(crypto_provider_handle_t provider,
    crypto_session_id_t session_id, crypto_mechanism_t *mechanism,
    crypto_key_t *key, crypto_data_t *plaintext, crypto_data_t *ciphertext,
    crypto_spi_ctx_template_t template, crypto_req_handle_t req)
{
 aes_ctx_t aes_ctx;
 off_t saved_offset;
 size_t saved_length;
 size_t length_needed;
 int ret;

 AES_ARG_INPLACE(plaintext, ciphertext);





 switch (mechanism->cm_type) {
 case 132:
 case 133:
 case 131:
 case 130:
  break;
 default:
  if ((plaintext->cd_length & (AES_BLOCK_LEN - 1)) != 0)
   return (CRYPTO_DATA_LEN_RANGE);
 }

 if ((ret = aes_check_mech_param(mechanism, ((void*)0), 0)) != CRYPTO_SUCCESS)
  return (ret);

 bzero(&aes_ctx, sizeof (aes_ctx_t));

 ret = aes_common_init_ctx(&aes_ctx, template, mechanism, key,
     crypto_kmflag(req), B_TRUE);
 if (ret != CRYPTO_SUCCESS)
  return (ret);

 switch (mechanism->cm_type) {
 case 133:
  length_needed = plaintext->cd_length + aes_ctx.ac_mac_len;
  break;
 case 130:
  if (plaintext->cd_length != 0)
   return (CRYPTO_ARGUMENTS_BAD);

 case 131:
  length_needed = plaintext->cd_length + aes_ctx.ac_tag_len;
  break;
 default:
  length_needed = plaintext->cd_length;
 }


 if (ciphertext->cd_length < length_needed) {
  ciphertext->cd_length = length_needed;
  ret = CRYPTO_BUFFER_TOO_SMALL;
  goto out;
 }

 saved_offset = ciphertext->cd_offset;
 saved_length = ciphertext->cd_length;




 switch (plaintext->cd_format) {
 case 129:
  ret = crypto_update_iov(&aes_ctx, plaintext, ciphertext,
      aes_encrypt_contiguous_blocks, aes_copy_block64);
  break;
 case 128:
  ret = crypto_update_uio(&aes_ctx, plaintext, ciphertext,
      aes_encrypt_contiguous_blocks, aes_copy_block64);
  break;
 default:
  ret = CRYPTO_ARGUMENTS_BAD;
 }

 if (ret == CRYPTO_SUCCESS) {
  if (mechanism->cm_type == 133) {
   ret = ccm_encrypt_final((ccm_ctx_t *)&aes_ctx,
       ciphertext, AES_BLOCK_LEN, aes_encrypt_block,
       aes_xor_block);
   if (ret != CRYPTO_SUCCESS)
    goto out;
   ASSERT(aes_ctx.ac_remainder_len == 0);
  } else if (mechanism->cm_type == 131 ||
      mechanism->cm_type == 130) {
   ret = gcm_encrypt_final((gcm_ctx_t *)&aes_ctx,
       ciphertext, AES_BLOCK_LEN, aes_encrypt_block,
       aes_copy_block, aes_xor_block);
   if (ret != CRYPTO_SUCCESS)
    goto out;
   ASSERT(aes_ctx.ac_remainder_len == 0);
  } else if (mechanism->cm_type == 132) {
   if (aes_ctx.ac_remainder_len > 0) {
    ret = ctr_mode_final((ctr_ctx_t *)&aes_ctx,
        ciphertext, aes_encrypt_block);
    if (ret != CRYPTO_SUCCESS)
     goto out;
   }
  } else {
   ASSERT(aes_ctx.ac_remainder_len == 0);
  }

  if (plaintext != ciphertext) {
   ciphertext->cd_length =
       ciphertext->cd_offset - saved_offset;
  }
 } else {
  ciphertext->cd_length = saved_length;
 }
 ciphertext->cd_offset = saved_offset;

out:
 if (aes_ctx.ac_flags & PROVIDER_OWNS_KEY_SCHEDULE) {
  bzero(aes_ctx.ac_keysched, aes_ctx.ac_keysched_len);
  kmem_free(aes_ctx.ac_keysched, aes_ctx.ac_keysched_len);
 }

 return (ret);
}
