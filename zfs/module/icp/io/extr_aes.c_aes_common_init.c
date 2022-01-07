
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int crypto_spi_ctx_template_t ;
typedef int crypto_req_handle_t ;
typedef int crypto_mechanism_t ;
struct TYPE_6__ {scalar_t__ ck_format; } ;
typedef TYPE_1__ crypto_key_t ;
struct TYPE_7__ {int * cc_provider_private; } ;
typedef TYPE_2__ crypto_ctx_t ;
typedef int boolean_t ;
typedef int aes_ctx_t ;


 scalar_t__ CRYPTO_KEY_RAW ;
 int CRYPTO_KEY_TYPE_INCONSISTENT ;
 int CRYPTO_SUCCESS ;
 int aes_check_mech_param (int *,int **,int) ;
 int aes_common_init_ctx (int *,int ,int *,TYPE_1__*,int,int ) ;
 int crypto_free_mode_ctx (int *) ;
 int crypto_kmflag (int ) ;

__attribute__((used)) static int
aes_common_init(crypto_ctx_t *ctx, crypto_mechanism_t *mechanism,
    crypto_key_t *key, crypto_spi_ctx_template_t template,
    crypto_req_handle_t req, boolean_t is_encrypt_init)
{
 aes_ctx_t *aes_ctx;
 int rv;
 int kmflag;




 if (key->ck_format != CRYPTO_KEY_RAW) {
  return (CRYPTO_KEY_TYPE_INCONSISTENT);
 }

 kmflag = crypto_kmflag(req);
 if ((rv = aes_check_mech_param(mechanism, &aes_ctx, kmflag))
     != CRYPTO_SUCCESS)
  return (rv);

 rv = aes_common_init_ctx(aes_ctx, template, mechanism, key, kmflag,
     is_encrypt_init);
 if (rv != CRYPTO_SUCCESS) {
  crypto_free_mode_ctx(aes_ctx);
  return (rv);
 }

 ctx->cc_provider_private = aes_ctx;

 return (CRYPTO_SUCCESS);
}
