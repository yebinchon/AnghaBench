
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int kcf_areq_node_t ;
struct TYPE_4__ {int gs_lock; int gs_cv; } ;
struct TYPE_3__ {scalar_t__ kp_idlethreads; int kp_threads; int kp_blockedthreads; int kp_nthrs; int kp_user_lock; int kp_user_cv; scalar_t__ kp_signal_create_thread; } ;


 scalar_t__ B_TRUE ;
 int CRYPTO_QUEUED ;
 int MIN (int,scalar_t__) ;
 int cv_signal (int *) ;
 TYPE_2__* gswq ;
 int kcf_enqueue (int *) ;
 scalar_t__ kcf_maxthreads ;
 int kcf_minthreads ;
 TYPE_1__* kcfpool ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static int
kcf_disp_sw_request(kcf_areq_node_t *areq)
{
 int err;
 int cnt = 0;

 if ((err = kcf_enqueue(areq)) != 0)
  return (err);

 if (kcfpool->kp_idlethreads > 0) {

  mutex_enter(&gswq->gs_lock);
  cv_signal(&gswq->gs_cv);
  mutex_exit(&gswq->gs_lock);

  return (CRYPTO_QUEUED);
 }





 cnt = kcf_minthreads -
     (kcfpool->kp_threads - kcfpool->kp_blockedthreads);
 if (cnt > 0) {




  cnt = MIN(cnt, kcf_maxthreads - (int)kcfpool->kp_threads);
  if (cnt > 0) {

   mutex_enter(&kcfpool->kp_user_lock);
   if (!kcfpool->kp_signal_create_thread) {
    kcfpool->kp_signal_create_thread = B_TRUE;
    kcfpool->kp_nthrs = cnt;
    cv_signal(&kcfpool->kp_user_cv);
   }
   mutex_exit(&kcfpool->kp_user_lock);
  }
 }

 return (CRYPTO_QUEUED);
}
