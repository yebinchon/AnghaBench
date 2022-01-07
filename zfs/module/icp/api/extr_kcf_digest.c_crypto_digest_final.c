
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int kcf_req_params_t ;
struct TYPE_11__ {scalar_t__ pd_prov_type; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
struct TYPE_12__ {TYPE_1__* kc_prov_desc; } ;
typedef TYPE_2__ kcf_context_t ;
typedef int crypto_data_t ;
struct TYPE_13__ {int cc_session; scalar_t__ cc_framework_private; } ;
typedef TYPE_3__ crypto_ctx_t ;
typedef scalar_t__ crypto_context_t ;
typedef int crypto_call_req_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 scalar_t__ CHECK_FASTPATH (int *,TYPE_1__*) ;
 int CRYPTO_INVALID_CONTEXT ;
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ;
 int KCF_CONTEXT_COND_RELEASE (int,TYPE_2__*) ;
 int KCF_OP_FINAL ;
 int KCF_PROV_DIGEST_FINAL (TYPE_1__*,TYPE_3__*,int *,int *) ;
 int KCF_PROV_INCRSTATS (TYPE_1__*,int) ;
 int KCF_WRAP_DIGEST_OPS_PARAMS (int *,int ,int ,int *,int *,int *,int *) ;
 int kcf_submit_request (TYPE_1__*,TYPE_3__*,int *,int *,int ) ;

int
crypto_digest_final(crypto_context_t context, crypto_data_t *digest,
    crypto_call_req_t *cr)
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
  error = KCF_PROV_DIGEST_FINAL(pd, ctx, digest, ((void*)0));
  KCF_PROV_INCRSTATS(pd, error);
 } else {
  KCF_WRAP_DIGEST_OPS_PARAMS(&params, KCF_OP_FINAL,
      ctx->cc_session, ((void*)0), ((void*)0), ((void*)0), digest);
  error = kcf_submit_request(pd, ctx, cr, &params, B_FALSE);
 }


 KCF_CONTEXT_COND_RELEASE(error, kcf_ctx);
 return (error);
}
