
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef void* off_t ;
struct TYPE_26__ {scalar_t__ gcm_pt_buf_len; int * gcm_pt_buf; } ;
typedef TYPE_1__ gcm_ctx_t ;
typedef int ctr_ctx_t ;
typedef int crypto_spi_ctx_template_t ;
typedef int crypto_session_id_t ;
typedef int crypto_req_handle_t ;
typedef int crypto_provider_handle_t ;
struct TYPE_27__ {int cm_type; } ;
typedef TYPE_2__ crypto_mechanism_t ;
typedef int crypto_key_t ;
struct TYPE_28__ {int cd_length; void* cd_offset; int cd_format; } ;
typedef TYPE_3__ crypto_data_t ;
typedef int ccm_ctx_t ;
struct TYPE_29__ {size_t ac_data_len; size_t ac_tag_len; scalar_t__ ac_processed_data_len; scalar_t__ ac_processed_mac_len; scalar_t__ ac_mac_len; scalar_t__ ac_remainder_len; int ac_flags; int ac_keysched_len; int * ac_pt_buf; struct TYPE_29__* ac_keysched; } ;
typedef TYPE_4__ aes_ctx_t ;


 int AES_ARG_INPLACE (TYPE_3__*,TYPE_3__*) ;
 int AES_BLOCK_LEN ;




 int ASSERT (int) ;
 int B_FALSE ;
 int CCM_MODE ;
 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_BUFFER_TOO_SMALL ;
 int CRYPTO_DATA_LEN_RANGE ;


 int CRYPTO_ENCRYPTED_DATA_LEN_RANGE ;
 int CRYPTO_SUCCESS ;
 int GCM_MODE ;
 int GMAC_MODE ;
 int PROVIDER_OWNS_KEY_SCHEDULE ;
 int aes_check_mech_param (TYPE_2__*,int *,int ) ;
 int aes_common_init_ctx (TYPE_4__*,int ,TYPE_2__*,int *,int ,int ) ;
 int aes_copy_block ;
 int aes_copy_block64 ;
 int aes_decrypt_contiguous_blocks ;
 int aes_encrypt_block ;
 int aes_xor_block ;
 int bzero (TYPE_4__*,int) ;
 int ccm_decrypt_final (int *,TYPE_3__*,int ,int ,int ,int ) ;
 int crypto_kmflag (int ) ;
 int crypto_update_iov (TYPE_4__*,TYPE_3__*,TYPE_3__*,int ,int ) ;
 int crypto_update_uio (TYPE_4__*,TYPE_3__*,TYPE_3__*,int ,int ) ;
 int ctr_mode_final (int *,TYPE_3__*,int ) ;
 int gcm_decrypt_final (TYPE_1__*,TYPE_3__*,int ,int ,int ) ;
 int gcm_set_kmflag (TYPE_1__*,int ) ;
 int kmem_free (TYPE_4__*,int) ;
 int vmem_free (int *,scalar_t__) ;

__attribute__((used)) static int
aes_decrypt_atomic(crypto_provider_handle_t provider,
    crypto_session_id_t session_id, crypto_mechanism_t *mechanism,
    crypto_key_t *key, crypto_data_t *ciphertext, crypto_data_t *plaintext,
    crypto_spi_ctx_template_t template, crypto_req_handle_t req)
{
 aes_ctx_t aes_ctx;
 off_t saved_offset;
 size_t saved_length;
 size_t length_needed;
 int ret;

 AES_ARG_INPLACE(ciphertext, plaintext);





 switch (mechanism->cm_type) {
 case 132:
 case 133:
 case 131:
 case 130:
  break;
 default:
  if ((ciphertext->cd_length & (AES_BLOCK_LEN - 1)) != 0)
   return (CRYPTO_ENCRYPTED_DATA_LEN_RANGE);
 }

 if ((ret = aes_check_mech_param(mechanism, ((void*)0), 0)) != CRYPTO_SUCCESS)
  return (ret);

 bzero(&aes_ctx, sizeof (aes_ctx_t));

 ret = aes_common_init_ctx(&aes_ctx, template, mechanism, key,
     crypto_kmflag(req), B_FALSE);
 if (ret != CRYPTO_SUCCESS)
  return (ret);

 switch (mechanism->cm_type) {
 case 133:
  length_needed = aes_ctx.ac_data_len;
  break;
 case 131:
  length_needed = ciphertext->cd_length - aes_ctx.ac_tag_len;
  break;
 case 130:
  if (plaintext->cd_length != 0)
   return (CRYPTO_ARGUMENTS_BAD);
  length_needed = 0;
  break;
 default:
  length_needed = ciphertext->cd_length;
 }


 if (plaintext->cd_length < length_needed) {
  plaintext->cd_length = length_needed;
  ret = CRYPTO_BUFFER_TOO_SMALL;
  goto out;
 }

 saved_offset = plaintext->cd_offset;
 saved_length = plaintext->cd_length;

 if (mechanism->cm_type == 131 ||
     mechanism->cm_type == 130)
  gcm_set_kmflag((gcm_ctx_t *)&aes_ctx, crypto_kmflag(req));




 switch (ciphertext->cd_format) {
 case 129:
  ret = crypto_update_iov(&aes_ctx, ciphertext, plaintext,
      aes_decrypt_contiguous_blocks, aes_copy_block64);
  break;
 case 128:
  ret = crypto_update_uio(&aes_ctx, ciphertext, plaintext,
      aes_decrypt_contiguous_blocks, aes_copy_block64);
  break;
 default:
  ret = CRYPTO_ARGUMENTS_BAD;
 }

 if (ret == CRYPTO_SUCCESS) {
  if (mechanism->cm_type == 133) {
   ASSERT(aes_ctx.ac_processed_data_len
       == aes_ctx.ac_data_len);
   ASSERT(aes_ctx.ac_processed_mac_len
       == aes_ctx.ac_mac_len);
   ret = ccm_decrypt_final((ccm_ctx_t *)&aes_ctx,
       plaintext, AES_BLOCK_LEN, aes_encrypt_block,
       aes_copy_block, aes_xor_block);
   ASSERT(aes_ctx.ac_remainder_len == 0);
   if ((ret == CRYPTO_SUCCESS) &&
       (ciphertext != plaintext)) {
    plaintext->cd_length =
        plaintext->cd_offset - saved_offset;
   } else {
    plaintext->cd_length = saved_length;
   }
  } else if (mechanism->cm_type == 131 ||
      mechanism->cm_type == 130) {
   ret = gcm_decrypt_final((gcm_ctx_t *)&aes_ctx,
       plaintext, AES_BLOCK_LEN, aes_encrypt_block,
       aes_xor_block);
   ASSERT(aes_ctx.ac_remainder_len == 0);
   if ((ret == CRYPTO_SUCCESS) &&
       (ciphertext != plaintext)) {
    plaintext->cd_length =
        plaintext->cd_offset - saved_offset;
   } else {
    plaintext->cd_length = saved_length;
   }
  } else if (mechanism->cm_type != 132) {
   ASSERT(aes_ctx.ac_remainder_len == 0);
   if (ciphertext != plaintext)
    plaintext->cd_length =
        plaintext->cd_offset - saved_offset;
  } else {
   if (aes_ctx.ac_remainder_len > 0) {
    ret = ctr_mode_final((ctr_ctx_t *)&aes_ctx,
        plaintext, aes_encrypt_block);
    if (ret == CRYPTO_DATA_LEN_RANGE)
     ret = CRYPTO_ENCRYPTED_DATA_LEN_RANGE;
    if (ret != CRYPTO_SUCCESS)
     goto out;
   }
   if (ciphertext != plaintext)
    plaintext->cd_length =
        plaintext->cd_offset - saved_offset;
  }
 } else {
  plaintext->cd_length = saved_length;
 }
 plaintext->cd_offset = saved_offset;

out:
 if (aes_ctx.ac_flags & PROVIDER_OWNS_KEY_SCHEDULE) {
  bzero(aes_ctx.ac_keysched, aes_ctx.ac_keysched_len);
  kmem_free(aes_ctx.ac_keysched, aes_ctx.ac_keysched_len);
 }

 if (aes_ctx.ac_flags & CCM_MODE) {
  if (aes_ctx.ac_pt_buf != ((void*)0)) {
   vmem_free(aes_ctx.ac_pt_buf, aes_ctx.ac_data_len);
  }
 } else if (aes_ctx.ac_flags & (GCM_MODE|GMAC_MODE)) {
  if (((gcm_ctx_t *)&aes_ctx)->gcm_pt_buf != ((void*)0)) {
   vmem_free(((gcm_ctx_t *)&aes_ctx)->gcm_pt_buf,
       ((gcm_ctx_t *)&aes_ctx)->gcm_pt_buf_len);
  }
 }

 return (ret);
}
