
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int taskq_t ;
struct TYPE_22__ {int * ks_taskq; } ;
struct TYPE_23__ {int pd_prov_type; TYPE_2__ pd_sched_info; int pd_sid; int pd_prov_handle; } ;
typedef TYPE_3__ kcf_provider_desc_t ;
struct TYPE_27__ {int * cc_provider_private; int cc_session; int cc_provider; } ;
struct TYPE_24__ {TYPE_7__ kc_glbl_ctx; TYPE_3__* kc_prov_desc; } ;
typedef TYPE_4__ kcf_context_t ;
struct TYPE_21__ {int cr_flag; } ;
struct TYPE_25__ {int an_lock; int an_state; TYPE_3__* an_provider; TYPE_4__* an_context; TYPE_1__ an_reqarg; int an_tried_plist; } ;
typedef TYPE_5__ kcf_areq_node_t ;
struct TYPE_26__ {int cm_type; } ;
typedef TYPE_6__ crypto_mechanism_t ;
typedef int crypto_mech_type_t ;
typedef int crypto_func_group_t ;
typedef TYPE_7__ crypto_ctx_t ;


 int ASSERT (int) ;
 int CRYPTO_FAILED ;
 int CRYPTO_HOST_MEMORY ;

 int CRYPTO_QUEUED ;
 int CRYPTO_RESTRICTED ;

 int KCF_PROV_REFHOLD (TYPE_3__*) ;
 int KCF_PROV_REFRELE (TYPE_3__*) ;
 int KM_NOSLEEP ;
 int REQ_WAITING ;
 int TASKQID_INVALID ;
 int TQ_NOSLEEP ;
 int can_resubmit (TYPE_5__*,TYPE_6__**,TYPE_6__**,int *) ;
 int kcf_disp_sw_request (TYPE_5__*) ;
 TYPE_3__* kcf_get_dual_provider (TYPE_6__*,TYPE_6__*,int *,int *,int *,int*,int ,int ,int ,int,int ) ;
 TYPE_3__* kcf_get_mech_provider (int ,int *,int*,int ,int ,int,int ) ;
 int * kcf_insert_triedlist (int *,TYPE_3__*,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int process_req_hwp ;
 int taskq_dispatch (int *,int ,TYPE_5__*,int ) ;

__attribute__((used)) static int
kcf_resubmit_request(kcf_areq_node_t *areq)
{
 int error = CRYPTO_FAILED;
 kcf_context_t *ictx;
 kcf_provider_desc_t *old_pd;
 kcf_provider_desc_t *new_pd;
 crypto_mechanism_t *mech1 = ((void*)0), *mech2 = ((void*)0);
 crypto_mech_type_t prov_mt1, prov_mt2;
 crypto_func_group_t fg = 0;

 if (!can_resubmit(areq, &mech1, &mech2, &fg))
  return (error);

 old_pd = areq->an_provider;





 if (kcf_insert_triedlist(&areq->an_tried_plist, old_pd,
     KM_NOSLEEP) == ((void*)0))
  return (error);

 if (mech1 && !mech2) {
  new_pd = kcf_get_mech_provider(mech1->cm_type, ((void*)0), &error,
      areq->an_tried_plist, fg,
      (areq->an_reqarg.cr_flag & CRYPTO_RESTRICTED), 0);
 } else {
  ASSERT(mech1 != ((void*)0) && mech2 != ((void*)0));

  new_pd = kcf_get_dual_provider(mech1, mech2, ((void*)0), &prov_mt1,
      &prov_mt2, &error, areq->an_tried_plist, fg, fg,
      (areq->an_reqarg.cr_flag & CRYPTO_RESTRICTED), 0);
 }

 if (new_pd == ((void*)0))
  return (error);





 if ((ictx = areq->an_context) != ((void*)0)) {
  crypto_ctx_t *ctx;

  ASSERT(old_pd == ictx->kc_prov_desc);
  KCF_PROV_REFRELE(ictx->kc_prov_desc);
  KCF_PROV_REFHOLD(new_pd);
  ictx->kc_prov_desc = new_pd;

  ctx = &ictx->kc_glbl_ctx;
  ctx->cc_provider = new_pd->pd_prov_handle;
  ctx->cc_session = new_pd->pd_sid;
  ctx->cc_provider_private = ((void*)0);
 }


 KCF_PROV_REFRELE(old_pd);
 KCF_PROV_REFHOLD(new_pd);
 areq->an_provider = new_pd;
 mutex_enter(&areq->an_lock);
 areq->an_state = REQ_WAITING;
 mutex_exit(&areq->an_lock);

 switch (new_pd->pd_prov_type) {
 case 128:
  error = kcf_disp_sw_request(areq);
  break;

 case 129: {
  taskq_t *taskq = new_pd->pd_sched_info.ks_taskq;

  if (taskq_dispatch(taskq, process_req_hwp, areq, TQ_NOSLEEP) ==
      TASKQID_INVALID) {
   error = CRYPTO_HOST_MEMORY;
  } else {
   error = CRYPTO_QUEUED;
  }

  break;
 default:
  break;
 }
 }

 return (error);
}
