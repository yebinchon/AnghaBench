
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int crypto_data_t ;
struct TYPE_2__ {int ac_flags; } ;
typedef TYPE_1__ aes_ctx_t ;


 int AES_BLOCK_LEN ;
 int CBC_MODE ;
 int CCM_MODE ;
 int CTR_MODE ;
 int GCM_MODE ;
 int GMAC_MODE ;
 int aes_copy_block ;
 int aes_encrypt_block ;
 int aes_xor_block ;
 int cbc_encrypt_contiguous_blocks (void*,char*,size_t,int *,int ,int ,int ,int ) ;
 int ccm_mode_encrypt_contiguous_blocks (void*,char*,size_t,int *,int ,int ,int ,int ) ;
 int ctr_mode_contiguous_blocks (void*,char*,size_t,int *,int ,int ,int ) ;
 int ecb_cipher_contiguous_blocks (void*,char*,size_t,int *,int ,int ) ;
 int gcm_mode_encrypt_contiguous_blocks (void*,char*,size_t,int *,int ,int ,int ,int ) ;

int
aes_encrypt_contiguous_blocks(void *ctx, char *data, size_t length,
    crypto_data_t *out)
{
 aes_ctx_t *aes_ctx = ctx;
 int rv;

 if (aes_ctx->ac_flags & CTR_MODE) {
  rv = ctr_mode_contiguous_blocks(ctx, data, length, out,
      AES_BLOCK_LEN, aes_encrypt_block, aes_xor_block);
 } else if (aes_ctx->ac_flags & CCM_MODE) {
  rv = ccm_mode_encrypt_contiguous_blocks(ctx, data, length,
      out, AES_BLOCK_LEN, aes_encrypt_block, aes_copy_block,
      aes_xor_block);
 } else if (aes_ctx->ac_flags & (GCM_MODE|GMAC_MODE)) {
  rv = gcm_mode_encrypt_contiguous_blocks(ctx, data, length,
      out, AES_BLOCK_LEN, aes_encrypt_block, aes_copy_block,
      aes_xor_block);
 } else if (aes_ctx->ac_flags & CBC_MODE) {
  rv = cbc_encrypt_contiguous_blocks(ctx,
      data, length, out, AES_BLOCK_LEN, aes_encrypt_block,
      aes_copy_block, aes_xor_block);
 } else {
  rv = ecb_cipher_contiguous_blocks(ctx, data, length, out,
      AES_BLOCK_LEN, aes_encrypt_block);
 }
 return (rv);
}
