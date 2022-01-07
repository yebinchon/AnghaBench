
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int kcf_op_type_t ;
struct TYPE_15__ {TYPE_5__* kr_areq; } ;
typedef TYPE_3__ kcf_dual_req_t ;
struct TYPE_16__ {int kc_in_use_lock; int * kc_req_chain_last; TYPE_5__* kc_req_chain_first; } ;
typedef TYPE_4__ kcf_context_t ;
struct TYPE_14__ {int cr_flag; scalar_t__ cr_callback_arg; } ;
struct TYPE_13__ {int rp_optype; } ;
struct TYPE_17__ {TYPE_2__ an_reqarg; void* an_isdual; int an_lock; int an_turn_cv; int an_is_my_turn; struct TYPE_17__* an_ctxchain_next; TYPE_4__* an_context; TYPE_1__ an_params; int an_state; } ;
typedef TYPE_5__ kcf_areq_node_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;
 void* B_FALSE ;
 int B_TRUE ;
 int CRYPTO_NOTIFY_OPDONE ;
 scalar_t__ CRYPTO_QUEUED ;
 int CRYPTO_SKIP_REQID ;
 int CRYPTO_SUCCESS ;
 scalar_t__ IS_FINAL_OP (int ) ;
 scalar_t__ IS_INIT_OP (int ) ;
 scalar_t__ IS_RECOVERABLE (int) ;
 scalar_t__ IS_SINGLE_OP (int ) ;
 scalar_t__ IS_UPDATE_OP (int ) ;
 int KCF_AREQ_REFHOLD (TYPE_5__*) ;
 int KCF_AREQ_REFRELE (TYPE_5__*) ;
 int KCF_CONTEXT_REFRELE (TYPE_4__*) ;
 int NOTIFY_CLIENT (TYPE_5__*,int) ;
 int REQ_DONE ;
 int cv_signal (int *) ;
 int kcf_reqid_delete (TYPE_5__*) ;
 scalar_t__ kcf_resubmit_request (TYPE_5__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
kcf_aop_done(kcf_areq_node_t *areq, int error)
{
 kcf_op_type_t optype;
 boolean_t skip_notify = B_FALSE;
 kcf_context_t *ictx;
 kcf_areq_node_t *nextreq;






 if (error != CRYPTO_SUCCESS && IS_RECOVERABLE(error)) {





  if (kcf_resubmit_request(areq) == CRYPTO_QUEUED)
   return;
 }

 mutex_enter(&areq->an_lock);
 areq->an_state = REQ_DONE;
 mutex_exit(&areq->an_lock);

 optype = (&areq->an_params)->rp_optype;
 if ((ictx = areq->an_context) != ((void*)0)) {






  mutex_enter(&ictx->kc_in_use_lock);
  nextreq = areq->an_ctxchain_next;
  if (nextreq != ((void*)0)) {
   mutex_enter(&nextreq->an_lock);
   nextreq->an_is_my_turn = B_TRUE;
   cv_signal(&nextreq->an_turn_cv);
   mutex_exit(&nextreq->an_lock);
  }

  ictx->kc_req_chain_first = nextreq;
  if (nextreq == ((void*)0))
   ictx->kc_req_chain_last = ((void*)0);
  mutex_exit(&ictx->kc_in_use_lock);

  if (IS_SINGLE_OP(optype) || IS_FINAL_OP(optype)) {
   ASSERT(nextreq == ((void*)0));
   KCF_CONTEXT_REFRELE(ictx);
  } else if (error != CRYPTO_SUCCESS && IS_INIT_OP(optype)) {







   KCF_CONTEXT_REFRELE(ictx);
  }
 }



 if (areq->an_isdual) {
  kcf_dual_req_t *next_arg;
  next_arg = (kcf_dual_req_t *)areq->an_reqarg.cr_callback_arg;
  next_arg->kr_areq = areq;
  KCF_AREQ_REFHOLD(areq);
  areq->an_isdual = B_FALSE;

  NOTIFY_CLIENT(areq, error);
  return;
 }
 skip_notify = (IS_UPDATE_OP(optype) || IS_INIT_OP(optype)) &&
     (!(areq->an_reqarg.cr_flag & CRYPTO_NOTIFY_OPDONE)) &&
     (error == CRYPTO_SUCCESS);

 if (!skip_notify) {
  NOTIFY_CLIENT(areq, error);
 }

 if (!(areq->an_reqarg.cr_flag & CRYPTO_SKIP_REQID))
  kcf_reqid_delete(areq);

 KCF_AREQ_REFRELE(areq);
}
