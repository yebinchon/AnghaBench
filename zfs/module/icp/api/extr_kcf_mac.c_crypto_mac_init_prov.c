
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int kcf_req_params_t ;
struct TYPE_23__ {scalar_t__ pd_prov_type; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
typedef int kcf_context_t ;
typedef int crypto_spi_ctx_template_t ;
typedef int crypto_session_id_t ;
typedef TYPE_1__* crypto_provider_t ;
struct TYPE_24__ {int cm_type; } ;
typedef TYPE_3__ crypto_mechanism_t ;
typedef int crypto_key_t ;
struct TYPE_25__ {scalar_t__ cc_framework_private; } ;
typedef TYPE_4__ crypto_ctx_t ;
typedef scalar_t__ crypto_context_t ;
typedef int crypto_call_req_t ;


 int ASSERT (int ) ;
 int B_FALSE ;
 scalar_t__ CHECK_FASTPATH (int *,TYPE_1__*) ;
 int CHECK_RESTRICT (int *) ;
 int CRYPTO_FG_MAC ;
 int CRYPTO_HOST_MEMORY ;
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ;
 int CRYPTO_MECH_INVALID ;
 int CRYPTO_QUEUED ;
 int CRYPTO_SUCCESS ;
 int KCF_CONTEXT_REFRELE (int *) ;
 int KCF_OP_INIT ;
 int KCF_PROV_INCRSTATS (TYPE_1__*,int) ;
 int KCF_PROV_MAC_INIT (TYPE_1__*,TYPE_4__*,TYPE_3__*,int *,int ,int ) ;
 int KCF_PROV_REFHELD (TYPE_1__*) ;
 int KCF_PROV_REFRELE (TYPE_1__*) ;
 int KCF_SET_PROVIDER_MECHNUM (int ,TYPE_1__*,TYPE_3__*) ;
 int KCF_SWFP_RHNDL (int *) ;
 int KCF_WRAP_MAC_OPS_PARAMS (int *,int ,int ,TYPE_3__*,int *,int *,int *,int ) ;
 int kcf_get_hardware_provider (int ,int ,int ,TYPE_1__*,TYPE_1__**,int ) ;
 TYPE_4__* kcf_new_ctx (int *,TYPE_1__*,int ) ;
 int kcf_submit_request (TYPE_1__*,TYPE_4__*,int *,int *,int ) ;

int
crypto_mac_init_prov(crypto_provider_t provider, crypto_session_id_t sid,
    crypto_mechanism_t *mech, crypto_key_t *key, crypto_spi_ctx_template_t tmpl,
    crypto_context_t *ctxp, crypto_call_req_t *crq)
{
 int rv;
 crypto_ctx_t *ctx;
 kcf_req_params_t params;
 kcf_provider_desc_t *pd = provider;
 kcf_provider_desc_t *real_provider = pd;

 ASSERT(KCF_PROV_REFHELD(pd));

 if (pd->pd_prov_type == CRYPTO_LOGICAL_PROVIDER) {
  rv = kcf_get_hardware_provider(mech->cm_type,
      CRYPTO_MECH_INVALID, CHECK_RESTRICT(crq), pd,
      &real_provider, CRYPTO_FG_MAC);

  if (rv != CRYPTO_SUCCESS)
   return (rv);
 }


 if ((ctx = kcf_new_ctx(crq, real_provider, sid)) == ((void*)0)) {
  if (pd->pd_prov_type == CRYPTO_LOGICAL_PROVIDER)
   KCF_PROV_REFRELE(real_provider);
  return (CRYPTO_HOST_MEMORY);
 }


 if (CHECK_FASTPATH(crq, pd)) {
  crypto_mechanism_t lmech;

  lmech = *mech;
  KCF_SET_PROVIDER_MECHNUM(mech->cm_type, real_provider, &lmech);
  rv = KCF_PROV_MAC_INIT(real_provider, ctx, &lmech, key, tmpl,
      KCF_SWFP_RHNDL(crq));
  KCF_PROV_INCRSTATS(pd, rv);
 } else {
  KCF_WRAP_MAC_OPS_PARAMS(&params, KCF_OP_INIT, sid, mech, key,
      ((void*)0), ((void*)0), tmpl);
  rv = kcf_submit_request(real_provider, ctx, crq, &params,
      B_FALSE);
 }

 if (pd->pd_prov_type == CRYPTO_LOGICAL_PROVIDER)
  KCF_PROV_REFRELE(real_provider);

 if ((rv == CRYPTO_SUCCESS) || (rv == CRYPTO_QUEUED))
  *ctxp = (crypto_context_t)ctx;
 else {

  KCF_CONTEXT_REFRELE((kcf_context_t *)ctx->cc_framework_private);
 }

 return (rv);
}
