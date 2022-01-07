
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pd_prov_type; int pd_flags; int pd_sid; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
typedef int kcf_prov_tried_t ;
struct TYPE_10__ {int cm_type; } ;
typedef TYPE_2__ crypto_mechanism_t ;
typedef int crypto_context_t ;
typedef int crypto_call_req_t ;


 int CHECK_RESTRICT (int *) ;
 int CRYPTO_BUFFER_TOO_BIG ;
 int CRYPTO_FG_DIGEST ;
 int CRYPTO_HASH_NO_UPDATE ;
 scalar_t__ CRYPTO_HW_PROVIDER ;
 int CRYPTO_QUEUED ;
 int CRYPTO_SUCCESS ;
 scalar_t__ IS_RECOVERABLE (int) ;
 int KCF_KMFLAG (int *) ;
 int KCF_PROV_REFRELE (TYPE_1__*) ;
 int crypto_digest_init_prov (TYPE_1__*,int ,TYPE_2__*,int *,int *) ;
 int kcf_free_triedlist (int *) ;
 TYPE_1__* kcf_get_mech_provider (int ,int *,int*,int *,int ,int ,int ) ;
 int * kcf_insert_triedlist (int **,TYPE_1__*,int ) ;

int
crypto_digest_init(crypto_mechanism_t *mech, crypto_context_t *ctxp,
    crypto_call_req_t *crq)
{
 int error;
 kcf_provider_desc_t *pd;
 kcf_prov_tried_t *list = ((void*)0);

retry:

 if ((pd = kcf_get_mech_provider(mech->cm_type, ((void*)0), &error,
     list, CRYPTO_FG_DIGEST, CHECK_RESTRICT(crq), 0)) == ((void*)0)) {
  if (list != ((void*)0))
   kcf_free_triedlist(list);
  return (error);
 }

 if (pd->pd_prov_type == CRYPTO_HW_PROVIDER &&
     (pd->pd_flags & CRYPTO_HASH_NO_UPDATE)) {
  error = CRYPTO_BUFFER_TOO_BIG;
 } else {
  error = crypto_digest_init_prov(pd, pd->pd_sid,
      mech, ctxp, crq);
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
