
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_sync_lock; } ;
typedef TYPE_1__ tx_state_t ;
typedef int kcondvar_t ;
typedef scalar_t__ clock_t ;
typedef int callb_cpr_t ;


 int CALLB_CPR_SAFE_BEGIN (int *) ;
 int CALLB_CPR_SAFE_END (int *,int *) ;
 int cv_timedwait_sig (int *,int *,scalar_t__) ;
 int cv_wait_sig (int *,int *) ;
 scalar_t__ ddi_get_lbolt () ;

__attribute__((used)) static void
txg_thread_wait(tx_state_t *tx, callb_cpr_t *cpr, kcondvar_t *cv, clock_t time)
{
 CALLB_CPR_SAFE_BEGIN(cpr);






 if (time) {
  (void) cv_timedwait_sig(cv, &tx->tx_sync_lock,
      ddi_get_lbolt() + time);
 } else {
  cv_wait_sig(cv, &tx->tx_sync_lock);
 }

 CALLB_CPR_SAFE_END(cpr, &tx->tx_sync_lock);
}
