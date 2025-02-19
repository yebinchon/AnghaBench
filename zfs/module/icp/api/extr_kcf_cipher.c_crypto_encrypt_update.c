
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int kcf_req_params_t ;
struct TYPE_20__ {scalar_t__ pd_prov_type; } ;
typedef TYPE_2__ kcf_provider_desc_t ;
struct TYPE_21__ {TYPE_2__* kc_sw_prov_desc; TYPE_1__* kc_mech; TYPE_2__* kc_prov_desc; } ;
typedef TYPE_3__ kcf_context_t ;
struct TYPE_22__ {scalar_t__ cd_length; } ;
typedef TYPE_4__ crypto_data_t ;
struct TYPE_23__ {int cc_flags; int cc_session; scalar_t__ cc_framework_private; } ;
typedef TYPE_5__ crypto_ctx_t ;
typedef scalar_t__ crypto_context_t ;
typedef int crypto_call_req_t ;
struct TYPE_19__ {scalar_t__ me_threshold; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 scalar_t__ CHECK_FASTPATH (int *,TYPE_2__*) ;
 int CRYPTO_INVALID_CONTEXT ;
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ;
 int CRYPTO_USE_OPSTATE ;
 scalar_t__ KCF_IS_PROV_USABLE (TYPE_2__*) ;
 int KCF_OP_UPDATE ;
 int KCF_PROV_ENCRYPT_UPDATE (TYPE_2__*,TYPE_5__*,TYPE_4__*,TYPE_4__*,int *) ;
 int KCF_PROV_INCRSTATS (TYPE_2__*,int) ;
 int KCF_WRAP_ENCRYPT_OPS_PARAMS (int *,int ,int ,int *,int *,TYPE_4__*,TYPE_4__*,int *) ;
 int kcf_submit_request (TYPE_2__*,TYPE_5__*,int *,int *,int ) ;

int
crypto_encrypt_update(crypto_context_t context, crypto_data_t *plaintext,
    crypto_data_t *ciphertext, crypto_call_req_t *cr)
{
 crypto_ctx_t *ctx = (crypto_ctx_t *)context;
 kcf_context_t *kcf_ctx;
 kcf_provider_desc_t *pd;
 int error;
 kcf_req_params_t params;

 if ((ctx == ((void*)0)) ||
     ((kcf_ctx = (kcf_context_t *)ctx->cc_framework_private) == ((void*)0)) ||
     ((pd = kcf_ctx->kc_prov_desc) == ((void*)0))) {
  return (CRYPTO_INVALID_CONTEXT);
 }

 ASSERT(pd->pd_prov_type != CRYPTO_LOGICAL_PROVIDER);


 if (CHECK_FASTPATH(cr, pd)) {
  error = KCF_PROV_ENCRYPT_UPDATE(pd, ctx, plaintext,
      ciphertext, ((void*)0));
  KCF_PROV_INCRSTATS(pd, error);
  return (error);
 }


 if ((ctx->cc_flags & CRYPTO_USE_OPSTATE) && cr == ((void*)0)) {
  if (plaintext->cd_length < kcf_ctx->kc_mech->me_threshold &&
      kcf_ctx->kc_sw_prov_desc != ((void*)0) &&
      KCF_IS_PROV_USABLE(kcf_ctx->kc_sw_prov_desc)) {
   pd = kcf_ctx->kc_sw_prov_desc;
  }
 }

 KCF_WRAP_ENCRYPT_OPS_PARAMS(&params, KCF_OP_UPDATE,
     ctx->cc_session, ((void*)0), ((void*)0), plaintext, ciphertext, ((void*)0));
 error = kcf_submit_request(pd, ctx, cr, &params, B_FALSE);

 return (error);
}
