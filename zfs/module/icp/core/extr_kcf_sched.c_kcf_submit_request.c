
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


struct TYPE_32__ {int tq_nalloc; } ;
typedef TYPE_2__ taskq_t ;
struct TYPE_33__ {int sn_rv; int sn_lock; int sn_cv; int sn_state; TYPE_4__* sn_provider; int * sn_context; int * sn_params; } ;
typedef TYPE_3__ kcf_sreq_node_t ;
typedef int kcf_req_params_t ;
struct TYPE_31__ {TYPE_2__* ks_taskq; } ;
struct TYPE_34__ {int pd_prov_type; int pd_flags; int pd_state; TYPE_1__ pd_sched_info; } ;
typedef TYPE_4__ kcf_provider_desc_t ;
typedef int kcf_context_t ;
typedef TYPE_3__ kcf_areq_node_t ;
struct TYPE_35__ {scalar_t__ cc_framework_private; } ;
typedef TYPE_6__ crypto_ctx_t ;
struct TYPE_36__ {int cr_flag; void* cr_reqid; } ;
typedef TYPE_7__ crypto_call_req_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int CRYPTO_ALWAYS_QUEUE ;
 int CRYPTO_BUSY ;
 void* CRYPTO_FAILED ;
 int CRYPTO_HOST_MEMORY ;

 int CRYPTO_QUEUED ;
 int CRYPTO_SKIP_REQID ;
 int CRYPTO_SUCCESS ;

 int CRYPTO_SYNCHRONOUS ;
 int EMPTY_TASKQ (TYPE_2__*) ;
 int KCF_AREQ_REFRELE (TYPE_3__*) ;
 int KCF_PROV_IREFHOLD (TYPE_4__*) ;
 int KCF_PROV_IREFRELE (TYPE_4__*) ;
 int KCF_PROV_READY ;
 int KCF_PROV_REFHELD (TYPE_4__*) ;
 int KCF_RHNDL (int ) ;
 int KM_NOSLEEP ;
 int KM_SLEEP ;
 int REQ_ALLOCATED ;
 int REQ_DONE ;
 int TASKQID_INVALID ;
 int TQ_NOSLEEP ;
 int TQ_SLEEP ;
 int common_submit_request (TYPE_4__*,TYPE_6__*,int *,int ) ;
 int crypto_taskq_maxalloc ;
 int cv_wait (int *,int *) ;
 TYPE_3__* kcf_areqnode_alloc (TYPE_4__*,int *,TYPE_7__*,int *,int ) ;
 int kcf_disp_sw_request (TYPE_3__*) ;
 int kcf_reqid_delete (TYPE_3__*) ;
 void* kcf_reqid_insert (TYPE_3__*) ;
 int kcf_sreq_cache ;
 TYPE_3__* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int process_req_hwp (TYPE_3__*) ;
 int taskq_dispatch (TYPE_2__*,int (*) (TYPE_3__*),TYPE_3__*,int ) ;
 int taskq_wait (TYPE_2__*) ;

int
kcf_submit_request(kcf_provider_desc_t *pd, crypto_ctx_t *ctx,
    crypto_call_req_t *crq, kcf_req_params_t *params, boolean_t cont)
{
 int error = CRYPTO_SUCCESS;
 kcf_areq_node_t *areq;
 kcf_sreq_node_t *sreq;
 kcf_context_t *kcf_ctx;
 taskq_t *taskq = pd->pd_sched_info.ks_taskq;

 kcf_ctx = ctx ? (kcf_context_t *)ctx->cc_framework_private : ((void*)0);


 if (crq == ((void*)0)) {
  switch (pd->pd_prov_type) {
  case 128:
   error = common_submit_request(pd, ctx, params,
       KCF_RHNDL(KM_SLEEP));
   break;

  case 129:





   if ((pd->pd_flags & CRYPTO_SYNCHRONOUS) &&
       EMPTY_TASKQ(taskq)) {
    KCF_PROV_IREFHOLD(pd);
    if (pd->pd_state == KCF_PROV_READY) {
     error = common_submit_request(pd, ctx,
         params, KCF_RHNDL(KM_SLEEP));
     KCF_PROV_IREFRELE(pd);
     ASSERT(error != CRYPTO_QUEUED);
     break;
    }
    KCF_PROV_IREFRELE(pd);
   }

   sreq = kmem_cache_alloc(kcf_sreq_cache, KM_SLEEP);
   sreq->sn_state = REQ_ALLOCATED;
   sreq->sn_rv = CRYPTO_FAILED;
   sreq->sn_params = params;







   sreq->sn_context = kcf_ctx;
   ASSERT(KCF_PROV_REFHELD(pd));
   sreq->sn_provider = pd;

   ASSERT(taskq != ((void*)0));







   if (EMPTY_TASKQ(taskq) &&
       pd->pd_state == KCF_PROV_READY) {
    process_req_hwp(sreq);
   } else {







    if (taskq->tq_nalloc >= crypto_taskq_maxalloc) {
     taskq_wait(taskq);
    }

    (void) taskq_dispatch(taskq, process_req_hwp,
        sreq, TQ_SLEEP);
   }






   mutex_enter(&sreq->sn_lock);
   while (sreq->sn_state < REQ_DONE)
    cv_wait(&sreq->sn_cv, &sreq->sn_lock);
   mutex_exit(&sreq->sn_lock);

   error = sreq->sn_rv;
   kmem_cache_free(kcf_sreq_cache, sreq);

   break;

  default:
   error = CRYPTO_FAILED;
   break;
  }

 } else {
  switch (pd->pd_prov_type) {
  case 128:
   if (!(crq->cr_flag & CRYPTO_ALWAYS_QUEUE)) {




    error = common_submit_request(pd, ctx, params,
        KCF_RHNDL(KM_NOSLEEP));
   } else {




    areq = kcf_areqnode_alloc(pd, kcf_ctx, crq,
        params, cont);
    if (areq == ((void*)0))
     error = CRYPTO_HOST_MEMORY;
    else {
     if (!(crq->cr_flag
         & CRYPTO_SKIP_REQID)) {







     crq->cr_reqid = kcf_reqid_insert(areq);
     }

     error = kcf_disp_sw_request(areq);





     if (error != CRYPTO_QUEUED) {
      if (!(crq->cr_flag
          & CRYPTO_SKIP_REQID))
       kcf_reqid_delete(areq);
      KCF_AREQ_REFRELE(areq);
     }
    }
   }
   break;

  case 129:



   areq = kcf_areqnode_alloc(pd, kcf_ctx, crq, params,
       cont);
   if (areq == ((void*)0)) {
    error = CRYPTO_HOST_MEMORY;
    goto done;
   }

   ASSERT(taskq != ((void*)0));





   if (taskq->tq_nalloc >= crypto_taskq_maxalloc) {
    error = CRYPTO_BUSY;
    KCF_AREQ_REFRELE(areq);
    goto done;
   }

   if (!(crq->cr_flag & CRYPTO_SKIP_REQID)) {






   crq->cr_reqid = kcf_reqid_insert(areq);
   }

   if (taskq_dispatch(taskq,
       process_req_hwp, areq, TQ_NOSLEEP) ==
       TASKQID_INVALID) {
    error = CRYPTO_HOST_MEMORY;
    if (!(crq->cr_flag & CRYPTO_SKIP_REQID))
     kcf_reqid_delete(areq);
    KCF_AREQ_REFRELE(areq);
   } else {
    error = CRYPTO_QUEUED;
   }
   break;

  default:
   error = CRYPTO_FAILED;
   break;
  }
 }

done:
 return (error);
}
