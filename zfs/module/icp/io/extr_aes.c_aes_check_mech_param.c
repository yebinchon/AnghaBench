
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cm_type; size_t cm_param_len; int * cm_param; } ;
typedef TYPE_1__ crypto_mechanism_t ;
typedef scalar_t__ boolean_t ;
typedef void* alloc_fun ;
typedef int aes_ctx_t ;
typedef int CK_AES_GMAC_PARAMS ;
typedef int CK_AES_GCM_PARAMS ;
typedef int CK_AES_CTR_PARAMS ;
typedef int CK_AES_CCM_PARAMS ;


 size_t AES_BLOCK_LEN ;






 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int CRYPTO_MECHANISM_INVALID ;
 int CRYPTO_MECHANISM_PARAM_INVALID ;
 int CRYPTO_SUCCESS ;
 void* cbc_alloc_ctx (int) ;
 void* ccm_alloc_ctx (int) ;
 void* ctr_alloc_ctx (int) ;
 void* ecb_alloc_ctx (int) ;
 void* gcm_alloc_ctx (int) ;
 void* gmac_alloc_ctx (int) ;

__attribute__((used)) static int
aes_check_mech_param(crypto_mechanism_t *mechanism, aes_ctx_t **ctx, int kmflag)
{
 void *p = ((void*)0);
 boolean_t param_required = B_TRUE;
 size_t param_len;
 void *(*alloc_fun)(int);
 int rv = CRYPTO_SUCCESS;

 switch (mechanism->cm_type) {
 case 130:
  param_required = B_FALSE;
  alloc_fun = ecb_alloc_ctx;
  break;
 case 133:
  param_len = AES_BLOCK_LEN;
  alloc_fun = cbc_alloc_ctx;
  break;
 case 131:
  param_len = sizeof (CK_AES_CTR_PARAMS);
  alloc_fun = ctr_alloc_ctx;
  break;
 case 132:
  param_len = sizeof (CK_AES_CCM_PARAMS);
  alloc_fun = ccm_alloc_ctx;
  break;
 case 129:
  param_len = sizeof (CK_AES_GCM_PARAMS);
  alloc_fun = gcm_alloc_ctx;
  break;
 case 128:
  param_len = sizeof (CK_AES_GMAC_PARAMS);
  alloc_fun = gmac_alloc_ctx;
  break;
 default:
  rv = CRYPTO_MECHANISM_INVALID;
  return (rv);
 }
 if (param_required && mechanism->cm_param != ((void*)0) &&
     mechanism->cm_param_len != param_len) {
  rv = CRYPTO_MECHANISM_PARAM_INVALID;
 }
 if (ctx != ((void*)0)) {
  p = (alloc_fun)(kmflag);
  *ctx = p;
 }
 return (rv);
}
