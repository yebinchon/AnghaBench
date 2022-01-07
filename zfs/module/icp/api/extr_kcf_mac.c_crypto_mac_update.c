
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int kcf_req_params_t ;
struct TYPE_10__ {scalar_t__ pd_prov_type; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
struct TYPE_11__ {TYPE_1__* kc_prov_desc; } ;
typedef TYPE_2__ kcf_context_t ;
typedef int crypto_data_t ;
struct TYPE_12__ {int cc_session; scalar_t__ cc_framework_private; } ;
typedef TYPE_3__ crypto_ctx_t ;
typedef scalar_t__ crypto_context_t ;
typedef int crypto_call_req_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 scalar_t__ CHECK_FASTPATH (int *,TYPE_1__*) ;
 int CRYPTO_INVALID_CONTEXT ;
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ;
 int KCF_OP_UPDATE ;
 int KCF_PROV_INCRSTATS (TYPE_1__*,int) ;
 int KCF_PROV_MAC_UPDATE (TYPE_1__*,TYPE_3__*,int *,int *) ;
 int KCF_WRAP_MAC_OPS_PARAMS (int *,int ,int ,int *,int *,int *,int *,int *) ;
 int kcf_submit_request (TYPE_1__*,TYPE_3__*,int *,int *,int ) ;

int
crypto_mac_update(crypto_context_t context, crypto_data_t *data,
    crypto_call_req_t *cr)
{
 crypto_ctx_t *ctx = (crypto_ctx_t *)context;
 kcf_context_t *kcf_ctx;
 kcf_provider_desc_t *pd;
 kcf_req_params_t params;
 int rv;

 if ((ctx == ((void*)0)) ||
     ((kcf_ctx = (kcf_context_t *)ctx->cc_framework_private) == ((void*)0)) ||
     ((pd = kcf_ctx->kc_prov_desc) == ((void*)0))) {
  return (CRYPTO_INVALID_CONTEXT);
 }

 ASSERT(pd->pd_prov_type != CRYPTO_LOGICAL_PROVIDER);


 if (CHECK_FASTPATH(cr, pd)) {
  rv = KCF_PROV_MAC_UPDATE(pd, ctx, data, ((void*)0));
  KCF_PROV_INCRSTATS(pd, rv);
 } else {
  KCF_WRAP_MAC_OPS_PARAMS(&params, KCF_OP_UPDATE,
      ctx->cc_session, ((void*)0), ((void*)0), data, ((void*)0), ((void*)0));
  rv = kcf_submit_request(pd, ctx, cr, &params, B_FALSE);
 }

 return (rv);
}
