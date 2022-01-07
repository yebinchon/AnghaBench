
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ pd_prov_type; int pd_flags; int pd_sid; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
typedef int kcf_prov_tried_t ;
struct TYPE_13__ {scalar_t__ me_gen_swprov; } ;
typedef TYPE_2__ kcf_mech_entry_t ;
struct TYPE_14__ {scalar_t__ ct_generation; int * ct_prov_tmpl; } ;
typedef TYPE_3__ kcf_ctx_template_t ;
typedef int * crypto_spi_ctx_template_t ;
struct TYPE_15__ {int cm_type; } ;
typedef TYPE_4__ crypto_mechanism_t ;
typedef int crypto_key_t ;
typedef scalar_t__ crypto_ctx_template_t ;
typedef int crypto_context_t ;
typedef int crypto_call_req_t ;


 int CHECK_RESTRICT (int *) ;
 int CRYPTO_BUFFER_TOO_BIG ;
 int CRYPTO_FG_MAC ;
 int CRYPTO_HASH_NO_UPDATE ;
 scalar_t__ CRYPTO_HW_PROVIDER ;
 int CRYPTO_OLD_CTX_TEMPLATE ;
 int CRYPTO_QUEUED ;
 int CRYPTO_SUCCESS ;
 scalar_t__ CRYPTO_SW_PROVIDER ;
 scalar_t__ IS_RECOVERABLE (int) ;
 int KCF_KMFLAG (int *) ;
 int KCF_PROV_REFRELE (TYPE_1__*) ;
 int crypto_mac_init_prov (TYPE_1__*,int ,TYPE_4__*,int *,int *,int *,int *) ;
 int kcf_free_triedlist (int *) ;
 TYPE_1__* kcf_get_mech_provider (int ,TYPE_2__**,int*,int *,int ,int ,int ) ;
 int * kcf_insert_triedlist (int **,TYPE_1__*,int ) ;

int
crypto_mac_init(crypto_mechanism_t *mech, crypto_key_t *key,
    crypto_ctx_template_t tmpl, crypto_context_t *ctxp,
    crypto_call_req_t *crq)
{
 int error;
 kcf_mech_entry_t *me;
 kcf_provider_desc_t *pd;
 kcf_ctx_template_t *ctx_tmpl;
 crypto_spi_ctx_template_t spi_ctx_tmpl = ((void*)0);
 kcf_prov_tried_t *list = ((void*)0);

retry:

 if ((pd = kcf_get_mech_provider(mech->cm_type, &me, &error,
     list, CRYPTO_FG_MAC, CHECK_RESTRICT(crq), 0)) == ((void*)0)) {
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

 if (pd->pd_prov_type == CRYPTO_HW_PROVIDER &&
     (pd->pd_flags & CRYPTO_HASH_NO_UPDATE)) {
  error = CRYPTO_BUFFER_TOO_BIG;
 } else {
  error = crypto_mac_init_prov(pd, pd->pd_sid, mech, key,
      spi_ctx_tmpl, ctxp, crq);
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
