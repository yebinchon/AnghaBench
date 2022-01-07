
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gcm_ctx_t ;
typedef int ctr_ctx_t ;
typedef int crypto_spi_ctx_template_t ;
struct TYPE_6__ {int cm_type; int cm_param_len; int * cm_param; } ;
typedef TYPE_1__ crypto_mechanism_t ;
typedef int crypto_key_t ;
typedef int ccm_ctx_t ;
typedef int cbc_ctx_t ;
typedef int boolean_t ;
struct TYPE_7__ {int ac_flags; size_t ac_keysched_len; void* ac_keysched; } ;
typedef TYPE_2__ aes_ctx_t ;
struct TYPE_8__ {int cb; int ulCounterBits; } ;
typedef int CK_AES_GMAC_PARAMS ;
typedef int CK_AES_GCM_PARAMS ;
typedef TYPE_3__ CK_AES_CTR_PARAMS ;
typedef int CK_AES_CCM_PARAMS ;


 int AES_BLOCK_LEN ;






 int CRYPTO_HOST_MEMORY ;
 int CRYPTO_MECHANISM_PARAM_INVALID ;
 int CRYPTO_SUCCESS ;
 int ECB_MODE ;
 int PROVIDER_OWNS_KEY_SCHEDULE ;
 void* aes_alloc_keysched (size_t*,int) ;
 int aes_copy_block ;
 int aes_copy_block64 ;
 int aes_encrypt_block ;
 int aes_xor_block ;
 int bzero (void*,size_t) ;
 int cbc_init_ctx (int *,int *,int,int ,int ) ;
 int ccm_init_ctx (int *,int *,int,int ,int ,int ,int ) ;
 int ctr_init_ctx (int *,int ,int ,int ) ;
 int gcm_init_ctx (int *,int *,int ,int ,int ,int ) ;
 int gmac_init_ctx (int *,int *,int ,int ,int ,int ) ;
 int init_keysched (int *,void*) ;
 int kmem_free (void*,size_t) ;

__attribute__((used)) static int
aes_common_init_ctx(aes_ctx_t *aes_ctx, crypto_spi_ctx_template_t *template,
    crypto_mechanism_t *mechanism, crypto_key_t *key, int kmflag,
    boolean_t is_encrypt_init)
{
 int rv = CRYPTO_SUCCESS;
 void *keysched;
 size_t size = 0;

 if (template == ((void*)0)) {
  if ((keysched = aes_alloc_keysched(&size, kmflag)) == ((void*)0))
   return (CRYPTO_HOST_MEMORY);




  if ((rv = init_keysched(key, keysched)) != CRYPTO_SUCCESS) {
   kmem_free(keysched, size);
   return (rv);
  }

  aes_ctx->ac_flags |= PROVIDER_OWNS_KEY_SCHEDULE;
  aes_ctx->ac_keysched_len = size;
 } else {
  keysched = template;
 }
 aes_ctx->ac_keysched = keysched;

 switch (mechanism->cm_type) {
 case 133:
  rv = cbc_init_ctx((cbc_ctx_t *)aes_ctx, mechanism->cm_param,
      mechanism->cm_param_len, AES_BLOCK_LEN, aes_copy_block64);
  break;
 case 131: {
  CK_AES_CTR_PARAMS *pp;

  if (mechanism->cm_param == ((void*)0) ||
      mechanism->cm_param_len != sizeof (CK_AES_CTR_PARAMS)) {
   return (CRYPTO_MECHANISM_PARAM_INVALID);
  }
  pp = (CK_AES_CTR_PARAMS *)(void *)mechanism->cm_param;
  rv = ctr_init_ctx((ctr_ctx_t *)aes_ctx, pp->ulCounterBits,
      pp->cb, aes_copy_block);
  break;
 }
 case 132:
  if (mechanism->cm_param == ((void*)0) ||
      mechanism->cm_param_len != sizeof (CK_AES_CCM_PARAMS)) {
   return (CRYPTO_MECHANISM_PARAM_INVALID);
  }
  rv = ccm_init_ctx((ccm_ctx_t *)aes_ctx, mechanism->cm_param,
      kmflag, is_encrypt_init, AES_BLOCK_LEN, aes_encrypt_block,
      aes_xor_block);
  break;
 case 129:
  if (mechanism->cm_param == ((void*)0) ||
      mechanism->cm_param_len != sizeof (CK_AES_GCM_PARAMS)) {
   return (CRYPTO_MECHANISM_PARAM_INVALID);
  }
  rv = gcm_init_ctx((gcm_ctx_t *)aes_ctx, mechanism->cm_param,
      AES_BLOCK_LEN, aes_encrypt_block, aes_copy_block,
      aes_xor_block);
  break;
 case 128:
  if (mechanism->cm_param == ((void*)0) ||
      mechanism->cm_param_len != sizeof (CK_AES_GMAC_PARAMS)) {
   return (CRYPTO_MECHANISM_PARAM_INVALID);
  }
  rv = gmac_init_ctx((gcm_ctx_t *)aes_ctx, mechanism->cm_param,
      AES_BLOCK_LEN, aes_encrypt_block, aes_copy_block,
      aes_xor_block);
  break;
 case 130:
  aes_ctx->ac_flags |= ECB_MODE;
 }

 if (rv != CRYPTO_SUCCESS) {
  if (aes_ctx->ac_flags & PROVIDER_OWNS_KEY_SCHEDULE) {
   bzero(keysched, size);
   kmem_free(keysched, size);
  }
 }

 return (rv);
}
