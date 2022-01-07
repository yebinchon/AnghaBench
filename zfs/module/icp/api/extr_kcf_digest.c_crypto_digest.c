
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int kcf_req_params_t ;
struct TYPE_22__ {scalar_t__ pd_prov_type; int pd_flags; scalar_t__ pd_hash_limit; int pd_sid; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
typedef int kcf_prov_tried_t ;
struct TYPE_23__ {int cm_type; } ;
typedef TYPE_2__ crypto_mechanism_t ;
struct TYPE_24__ {scalar_t__ cd_length; } ;
typedef TYPE_3__ crypto_data_t ;
typedef int crypto_call_req_t ;


 int B_FALSE ;
 scalar_t__ CHECK_FASTPATH (int *,TYPE_1__*) ;
 int CHECK_RESTRICT (int *) ;
 int CRYPTO_BUFFER_TOO_BIG ;
 int CRYPTO_FG_DIGEST_ATOMIC ;
 int CRYPTO_HASH_NO_UPDATE ;
 scalar_t__ CRYPTO_HW_PROVIDER ;
 int CRYPTO_QUEUED ;
 int CRYPTO_SUCCESS ;
 scalar_t__ IS_RECOVERABLE (int) ;
 int KCF_KMFLAG (int *) ;
 int KCF_OP_ATOMIC ;
 int KCF_PROV_DIGEST_ATOMIC (TYPE_1__*,int ,TYPE_2__*,TYPE_3__*,TYPE_3__*,int ) ;
 int KCF_PROV_INCRSTATS (TYPE_1__*,int) ;
 int KCF_PROV_REFRELE (TYPE_1__*) ;
 int KCF_SET_PROVIDER_MECHNUM (int ,TYPE_1__*,TYPE_2__*) ;
 int KCF_SWFP_RHNDL (int *) ;
 int KCF_WRAP_DIGEST_OPS_PARAMS (int *,int ,int ,TYPE_2__*,int *,TYPE_3__*,TYPE_3__*) ;
 int kcf_free_triedlist (int *) ;
 TYPE_1__* kcf_get_mech_provider (int ,int *,int*,int *,int ,int ,scalar_t__) ;
 int * kcf_insert_triedlist (int **,TYPE_1__*,int ) ;
 int kcf_submit_request (TYPE_1__*,int *,int *,int *,int ) ;

int
crypto_digest(crypto_mechanism_t *mech, crypto_data_t *data,
    crypto_data_t *digest, crypto_call_req_t *crq)
{
 int error;
 kcf_provider_desc_t *pd;
 kcf_req_params_t params;
 kcf_prov_tried_t *list = ((void*)0);

retry:

 if ((pd = kcf_get_mech_provider(mech->cm_type, ((void*)0), &error, list,
     CRYPTO_FG_DIGEST_ATOMIC, CHECK_RESTRICT(crq),
     data->cd_length)) == ((void*)0)) {
  if (list != ((void*)0))
   kcf_free_triedlist(list);
  return (error);
 }


 if (CHECK_FASTPATH(crq, pd)) {
  crypto_mechanism_t lmech;

  lmech = *mech;
  KCF_SET_PROVIDER_MECHNUM(mech->cm_type, pd, &lmech);
  error = KCF_PROV_DIGEST_ATOMIC(pd, pd->pd_sid, &lmech, data,
      digest, KCF_SWFP_RHNDL(crq));
  KCF_PROV_INCRSTATS(pd, error);
 } else {
  if (pd->pd_prov_type == CRYPTO_HW_PROVIDER &&
      (pd->pd_flags & CRYPTO_HASH_NO_UPDATE) &&
      (data->cd_length > pd->pd_hash_limit)) {
   error = CRYPTO_BUFFER_TOO_BIG;
  } else {
   KCF_WRAP_DIGEST_OPS_PARAMS(&params, KCF_OP_ATOMIC,
       pd->pd_sid, mech, ((void*)0), data, digest);


   error = kcf_submit_request(pd, ((void*)0), crq, &params,
       B_FALSE);
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
