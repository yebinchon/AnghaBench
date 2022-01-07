
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int kcf_req_params_t ;
struct TYPE_12__ {scalar_t__ pd_prov_type; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
typedef int crypto_session_id_t ;
typedef TYPE_1__* crypto_provider_t ;
struct TYPE_13__ {int cm_type; } ;
typedef TYPE_3__ crypto_mechanism_t ;
typedef int crypto_key_t ;
typedef int crypto_data_t ;
typedef int crypto_ctx_template_t ;
typedef int crypto_call_req_t ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int CHECK_RESTRICT (int *) ;
 int CRYPTO_FG_MAC_ATOMIC ;
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ;
 int CRYPTO_MECH_INVALID ;
 int CRYPTO_SUCCESS ;
 int KCF_OP_MAC_VERIFY_ATOMIC ;
 int KCF_PROV_REFHELD (TYPE_1__*) ;
 int KCF_PROV_REFRELE (TYPE_1__*) ;
 int KCF_WRAP_MAC_OPS_PARAMS (int *,int ,int ,TYPE_3__*,int *,int *,int *,int ) ;
 int kcf_get_hardware_provider (int ,int ,int ,TYPE_1__*,TYPE_1__**,int ) ;
 int kcf_submit_request (TYPE_1__*,int *,int *,int *,int ) ;

int
crypto_mac_verify_prov(crypto_provider_t provider, crypto_session_id_t sid,
    crypto_mechanism_t *mech, crypto_data_t *data, crypto_key_t *key,
    crypto_ctx_template_t tmpl, crypto_data_t *mac, crypto_call_req_t *crq)
{
 kcf_req_params_t params;
 kcf_provider_desc_t *pd = provider;
 kcf_provider_desc_t *real_provider = pd;
 int rv;

 ASSERT(KCF_PROV_REFHELD(pd));

 if (pd->pd_prov_type == CRYPTO_LOGICAL_PROVIDER) {
  rv = kcf_get_hardware_provider(mech->cm_type,
      CRYPTO_MECH_INVALID, CHECK_RESTRICT(crq), pd,
      &real_provider, CRYPTO_FG_MAC_ATOMIC);

  if (rv != CRYPTO_SUCCESS)
   return (rv);
 }

 KCF_WRAP_MAC_OPS_PARAMS(&params, KCF_OP_MAC_VERIFY_ATOMIC, sid, mech,
     key, data, mac, tmpl);
 rv = kcf_submit_request(real_provider, ((void*)0), crq, &params, B_FALSE);
 if (pd->pd_prov_type == CRYPTO_LOGICAL_PROVIDER)
  KCF_PROV_REFRELE(real_provider);

 return (rv);
}
