
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef int taskqid_t ;
typedef int taskq_t ;
struct TYPE_34__ {int dop_framework_mechtype; scalar_t__ dop_ciphertext; } ;
struct TYPE_32__ {int mo_templ; int mo_framework_mechtype; scalar_t__ mo_data; } ;
struct TYPE_26__ {TYPE_9__ decrypt_params; TYPE_7__ mac_params; } ;
struct TYPE_29__ {int rp_opgrp; TYPE_1__ rp_u; } ;
typedef TYPE_4__ kcf_req_params_t ;
struct TYPE_27__ {int * ks_taskq; } ;
struct TYPE_30__ {int pd_prov_type; TYPE_2__ pd_sched_info; } ;
typedef TYPE_5__ kcf_provider_desc_t ;
struct TYPE_31__ {int me_gen_swprov; } ;
typedef TYPE_6__ kcf_mech_entry_t ;
typedef TYPE_7__ kcf_mac_ops_params_t ;
struct TYPE_28__ {int cr_flag; TYPE_8__* cr_callback_arg; int cr_callback_func; } ;
struct TYPE_33__ {TYPE_3__ kr_callreq; int kr_savelen; int kr_saveoffset; TYPE_11__* kr_areq; TYPE_4__ kr_params; } ;
typedef TYPE_8__ kcf_dual_req_t ;
typedef TYPE_9__ kcf_decrypt_ops_params_t ;
struct TYPE_23__ {int ct_prov_tmpl; int ct_generation; } ;
typedef TYPE_10__ kcf_ctx_template_t ;
struct TYPE_24__ {void* an_isdual; TYPE_3__ an_reqarg; TYPE_5__* an_provider; TYPE_4__ an_params; } ;
typedef TYPE_11__ kcf_areq_node_t ;
struct TYPE_25__ {int dd_len1; int dd_offset1; int dd_len2; int dd_offset2; } ;
typedef TYPE_12__ crypto_dual_data_t ;
typedef int * crypto_ctx_template_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 int CRYPTO_FG_DECRYPT_ATOMIC ;
 int CRYPTO_FG_MAC_ATOMIC ;
 int CRYPTO_HOST_MEMORY ;

 int CRYPTO_MECH_NOT_SUPPORTED ;
 int CRYPTO_OLD_CTX_TEMPLATE ;
 int CRYPTO_QUEUED ;
 int CRYPTO_RESTRICTED ;
 int CRYPTO_SUCCESS ;

 int KCF_AREQ_REFRELE (TYPE_11__*) ;


 int KCF_PROV_REFHOLD (TYPE_5__*) ;
 int KCF_PROV_REFRELE (TYPE_5__*) ;
 int KCF_RHNDL (int ) ;
 int KM_NOSLEEP ;
 int TQ_NOSLEEP ;
 int common_submit_request (TYPE_5__*,int *,TYPE_4__*,int ) ;
 int kcf_aop_done (TYPE_11__*,int) ;
 TYPE_5__* kcf_get_mech_provider (int ,TYPE_6__**,int*,int *,int ,int,int ) ;
 int kcf_last_req ;
 int kmem_free (TYPE_8__*,int) ;
 int process_req_hwp ;
 int taskq_dispatch (int *,int ,TYPE_11__*,int ) ;

void
kcf_next_req(void *next_req_arg, int status)
{
 kcf_dual_req_t *next_req = (kcf_dual_req_t *)next_req_arg;
 kcf_req_params_t *params = &(next_req->kr_params);
 kcf_areq_node_t *areq = next_req->kr_areq;
 int error = status;
 kcf_provider_desc_t *pd = ((void*)0);
 crypto_dual_data_t *ct = ((void*)0);


 if (error != CRYPTO_SUCCESS) {
out:
  areq->an_reqarg = next_req->kr_callreq;
  KCF_AREQ_REFRELE(areq);
  kmem_free(next_req, sizeof (kcf_dual_req_t));
  areq->an_isdual = B_FALSE;
  kcf_aop_done(areq, error);
  return;
 }

 switch (params->rp_opgrp) {
 case 128: {







  kcf_mac_ops_params_t *mops = &(params->rp_u.mac_params);
  crypto_ctx_template_t mac_tmpl;
  kcf_mech_entry_t *me;

  ct = (crypto_dual_data_t *)mops->mo_data;
  mac_tmpl = (crypto_ctx_template_t)mops->mo_templ;


  pd = kcf_get_mech_provider(mops->mo_framework_mechtype,
      &me, &error, ((void*)0), CRYPTO_FG_MAC_ATOMIC,
      (areq->an_reqarg.cr_flag & CRYPTO_RESTRICTED), ct->dd_len2);

  if (pd == ((void*)0)) {
   error = CRYPTO_MECH_NOT_SUPPORTED;
   goto out;
  }

  if ((pd->pd_prov_type == 130) &&
      (mac_tmpl != ((void*)0))) {
   kcf_ctx_template_t *ctx_mac_tmpl;

   ctx_mac_tmpl = (kcf_ctx_template_t *)mac_tmpl;

   if (ctx_mac_tmpl->ct_generation != me->me_gen_swprov) {
    KCF_PROV_REFRELE(pd);
    error = CRYPTO_OLD_CTX_TEMPLATE;
    goto out;
   }
   mops->mo_templ = ctx_mac_tmpl->ct_prov_tmpl;
  }

  break;
 }
 case 129: {
  kcf_decrypt_ops_params_t *dcrops =
      &(params->rp_u.decrypt_params);

  ct = (crypto_dual_data_t *)dcrops->dop_ciphertext;

  pd = kcf_get_mech_provider(dcrops->dop_framework_mechtype,
      ((void*)0), &error, ((void*)0), CRYPTO_FG_DECRYPT_ATOMIC,
      (areq->an_reqarg.cr_flag & CRYPTO_RESTRICTED), ct->dd_len1);

  if (pd == ((void*)0)) {
   error = CRYPTO_MECH_NOT_SUPPORTED;
   goto out;
  }
  break;
 }
 default:
  break;
 }


 next_req->kr_saveoffset = ct->dd_offset1;
 next_req->kr_savelen = ct->dd_len1;
 ct->dd_offset1 = ct->dd_offset2;
 ct->dd_len1 = ct->dd_len2;


 if (areq->an_reqarg.cr_flag & CRYPTO_RESTRICTED) {
  areq->an_reqarg.cr_flag = CRYPTO_RESTRICTED;
 } else {
  areq->an_reqarg.cr_flag = 0;
 }

 areq->an_reqarg.cr_callback_func = kcf_last_req;
 areq->an_reqarg.cr_callback_arg = next_req;
 areq->an_isdual = B_TRUE;







 switch (pd->pd_prov_type) {
 case 130:
  error = common_submit_request(pd, ((void*)0), params,
      KCF_RHNDL(KM_NOSLEEP));
  break;

 case 131: {
  kcf_provider_desc_t *old_pd;
  taskq_t *taskq = pd->pd_sched_info.ks_taskq;





  areq->an_params = *params;
  old_pd = areq->an_provider;
  KCF_PROV_REFRELE(old_pd);
  KCF_PROV_REFHOLD(pd);
  areq->an_provider = pd;





  if (taskq_dispatch(taskq, process_req_hwp, areq,
      TQ_NOSLEEP) == (taskqid_t)0) {
   error = CRYPTO_HOST_MEMORY;
  } else {
   error = CRYPTO_QUEUED;
  }
  break;
 }
 default:
  break;
 }





 KCF_AREQ_REFRELE(areq);
 KCF_PROV_REFRELE(pd);

 if (error != CRYPTO_QUEUED) {


  ct->dd_offset1 = next_req->kr_saveoffset;
  ct->dd_len1 = next_req->kr_savelen;
  areq->an_reqarg = next_req->kr_callreq;
  kmem_free(next_req, sizeof (kcf_dual_req_t));
  areq->an_isdual = B_FALSE;
  kcf_aop_done(areq, error);
 }
}
