
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ sn_provider; scalar_t__ an_provider; scalar_t__ an_is_my_turn; int an_params; int an_lock; void* an_state; int an_turn_cv; TYPE_4__* an_context; int * sn_params; TYPE_1__* sn_context; int sn_lock; void* sn_state; } ;
typedef TYPE_2__ kcf_sreq_node_t ;
struct TYPE_13__ {scalar_t__ pd_state; int pd_lock; int pd_resume_cv; } ;
typedef TYPE_3__ kcf_provider_desc_t ;
struct TYPE_14__ {scalar_t__ kc_prov_desc; int kc_glbl_ctx; } ;
typedef TYPE_4__ kcf_context_t ;
typedef scalar_t__ kcf_call_type_t ;
typedef TYPE_2__ kcf_areq_node_t ;
typedef int crypto_ctx_t ;
struct TYPE_11__ {int kc_glbl_ctx; } ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ CRYPTO_ASYNCH ;
 int CRYPTO_DEVICE_ERROR ;
 int CRYPTO_QUEUED ;
 scalar_t__ CRYPTO_SYNCH ;
 scalar_t__ GET_REQ_TYPE (void*) ;
 scalar_t__ KCF_PROV_BUSY ;
 scalar_t__ KCF_PROV_FAILED ;
 int KCF_PROV_IREFHOLD (TYPE_3__*) ;
 int KCF_PROV_IREFRELE (TYPE_3__*) ;
 void* REQ_INPROGRESS ;
 int common_submit_request (scalar_t__,int *,int *,TYPE_2__*) ;
 int cv_wait (int *,int *) ;
 int kcf_aop_done (TYPE_2__*,int) ;
 int kcf_sop_done (TYPE_2__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
process_req_hwp(void *ireq)
{
 int error = 0;
 crypto_ctx_t *ctx;
 kcf_call_type_t ctype;
 kcf_provider_desc_t *pd;
 kcf_areq_node_t *areq = (kcf_areq_node_t *)ireq;
 kcf_sreq_node_t *sreq = (kcf_sreq_node_t *)ireq;

 pd = ((ctype = GET_REQ_TYPE(ireq)) == CRYPTO_SYNCH) ?
     sreq->sn_provider : areq->an_provider;







 if (pd->pd_state == KCF_PROV_BUSY) {
  mutex_enter(&pd->pd_lock);
  while (pd->pd_state == KCF_PROV_BUSY)
   cv_wait(&pd->pd_resume_cv, &pd->pd_lock);
  mutex_exit(&pd->pd_lock);
 }






 KCF_PROV_IREFHOLD(pd);







 if (pd->pd_state >= KCF_PROV_FAILED) {
  error = CRYPTO_DEVICE_ERROR;
  goto bail;
 }

 if (ctype == CRYPTO_SYNCH) {
  mutex_enter(&sreq->sn_lock);
  sreq->sn_state = REQ_INPROGRESS;
  mutex_exit(&sreq->sn_lock);

  ctx = sreq->sn_context ? &sreq->sn_context->kc_glbl_ctx : ((void*)0);
  error = common_submit_request(sreq->sn_provider, ctx,
      sreq->sn_params, sreq);
 } else {
  kcf_context_t *ictx;
  ASSERT(ctype == CRYPTO_ASYNCH);






  ctx = (ictx = areq->an_context) ? &ictx->kc_glbl_ctx : ((void*)0);

  mutex_enter(&areq->an_lock);
  if (ictx != ((void*)0)) {
   ASSERT(ictx->kc_prov_desc == areq->an_provider);

   while (areq->an_is_my_turn == B_FALSE) {
    cv_wait(&areq->an_turn_cv, &areq->an_lock);
   }
  }
  areq->an_state = REQ_INPROGRESS;
  mutex_exit(&areq->an_lock);

  error = common_submit_request(areq->an_provider, ctx,
      &areq->an_params, areq);
 }

bail:
 if (error == CRYPTO_QUEUED) {





  return;
 } else {
  KCF_PROV_IREFRELE(pd);
  if (ctype == CRYPTO_SYNCH)
   kcf_sop_done(sreq, error);
  else
   kcf_aop_done(areq, error);
 }
}
