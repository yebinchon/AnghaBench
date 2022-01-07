
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int kcf_req_params_t ;
struct TYPE_25__ {scalar_t__ pd_prov_type; int pd_flags; scalar_t__ pd_hash_limit; int pd_sid; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
typedef int kcf_prov_tried_t ;
struct TYPE_26__ {scalar_t__ me_gen_swprov; } ;
typedef TYPE_2__ kcf_mech_entry_t ;
struct TYPE_27__ {scalar_t__ ct_generation; int * ct_prov_tmpl; } ;
typedef TYPE_3__ kcf_ctx_template_t ;
typedef int * crypto_spi_ctx_template_t ;
struct TYPE_28__ {int cm_type; } ;
typedef TYPE_4__ crypto_mechanism_t ;
typedef int crypto_key_t ;
struct TYPE_29__ {scalar_t__ cd_length; } ;
typedef TYPE_5__ crypto_data_t ;
typedef scalar_t__ crypto_ctx_template_t ;
typedef int crypto_call_req_t ;


 scalar_t__ CHECK_FASTPATH (int *,TYPE_1__*) ;
 int CHECK_RESTRICT (int *) ;
 int CRYPTO_BUFFER_TOO_BIG ;
 int CRYPTO_FG_MAC_ATOMIC ;
 int CRYPTO_HASH_NO_UPDATE ;
 scalar_t__ CRYPTO_HW_PROVIDER ;
 int CRYPTO_OLD_CTX_TEMPLATE ;
 int CRYPTO_QUEUED ;
 int CRYPTO_SUCCESS ;
 scalar_t__ CRYPTO_SW_PROVIDER ;
 scalar_t__ IS_RECOVERABLE (int) ;
 int KCF_ISDUALREQ (int *) ;
 int KCF_KMFLAG (int *) ;
 int KCF_OP_MAC_VERIFY_ATOMIC ;
 int KCF_PROV_INCRSTATS (TYPE_1__*,int) ;
 int KCF_PROV_MAC_VERIFY_ATOMIC (TYPE_1__*,int ,TYPE_4__*,int *,TYPE_5__*,TYPE_5__*,int *,int ) ;
 int KCF_PROV_REFRELE (TYPE_1__*) ;
 int KCF_SET_PROVIDER_MECHNUM (int ,TYPE_1__*,TYPE_4__*) ;
 int KCF_SWFP_RHNDL (int *) ;
 int KCF_WRAP_MAC_OPS_PARAMS (int *,int ,int ,TYPE_4__*,int *,TYPE_5__*,TYPE_5__*,int *) ;
 int kcf_free_triedlist (int *) ;
 TYPE_1__* kcf_get_mech_provider (int ,TYPE_2__**,int*,int *,int ,int ,scalar_t__) ;
 int * kcf_insert_triedlist (int **,TYPE_1__*,int ) ;
 int kcf_submit_request (TYPE_1__*,int *,int *,int *,int ) ;

int
crypto_mac_verify(crypto_mechanism_t *mech, crypto_data_t *data,
    crypto_key_t *key, crypto_ctx_template_t tmpl, crypto_data_t *mac,
    crypto_call_req_t *crq)
{
 int error;
 kcf_mech_entry_t *me;
 kcf_req_params_t params;
 kcf_provider_desc_t *pd;
 kcf_ctx_template_t *ctx_tmpl;
 crypto_spi_ctx_template_t spi_ctx_tmpl = ((void*)0);
 kcf_prov_tried_t *list = ((void*)0);

retry:

 if ((pd = kcf_get_mech_provider(mech->cm_type, &me, &error,
     list, CRYPTO_FG_MAC_ATOMIC, CHECK_RESTRICT(crq),
     data->cd_length)) == ((void*)0)) {
  if (list != ((void*)0))
   kcf_free_triedlist(list);
  return (error);
 }
 if ((pd->pd_prov_type == CRYPTO_SW_PROVIDER) &&
     ((ctx_tmpl = (kcf_ctx_template_t *)tmpl) != ((void*)0))) {
  if (ctx_tmpl->ct_generation != me->me_gen_swprov) {
   if (list != ((void*)0))
    kcf_free_triedlist(list);
   KCF_PROV_REFRELE(pd);
   return (CRYPTO_OLD_CTX_TEMPLATE);
  } else {
   spi_ctx_tmpl = ctx_tmpl->ct_prov_tmpl;
  }
 }


 if (CHECK_FASTPATH(crq, pd)) {
  crypto_mechanism_t lmech;

  lmech = *mech;
  KCF_SET_PROVIDER_MECHNUM(mech->cm_type, pd, &lmech);

  error = KCF_PROV_MAC_VERIFY_ATOMIC(pd, pd->pd_sid, &lmech, key,
      data, mac, spi_ctx_tmpl, KCF_SWFP_RHNDL(crq));
  KCF_PROV_INCRSTATS(pd, error);
 } else {
  if (pd->pd_prov_type == CRYPTO_HW_PROVIDER &&
      (pd->pd_flags & CRYPTO_HASH_NO_UPDATE) &&
      (data->cd_length > pd->pd_hash_limit)) {

   error = CRYPTO_BUFFER_TOO_BIG;
  } else {
   KCF_WRAP_MAC_OPS_PARAMS(&params,
       KCF_OP_MAC_VERIFY_ATOMIC, pd->pd_sid, mech,
       key, data, mac, spi_ctx_tmpl);

   error = kcf_submit_request(pd, ((void*)0), crq, &params,
       KCF_ISDUALREQ(crq));
  }
 }

 if (error != CRYPTO_SUCCESS && error != CRYPTO_QUEUED &&
     IS_RECOVERABLE(error)) {

  if (kcf_insert_triedlist(&list, pd, KCF_KMFLAG(crq)) != ((void*)0))
   goto retry;
 }

 if (list != ((void*)0))
  kcf_free_triedlist(list);

 KCF_PROV_REFRELE(pd);
 return (error);
}
