
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int callb_cpr_t ;


 scalar_t__ B_FALSE ;
 int CALLB_CPR_EXIT (int *) ;
 int CALLB_CPR_INIT (int *,int *,int ,int ) ;
 int CALLB_CPR_SAFE_BEGIN (int *) ;
 int CALLB_CPR_SAFE_END (int *,int *) ;
 int FTAG ;
 int MSEC2NSEC (int) ;
 int SEC2NSEC (int) ;
 int callb_generic_cpr ;
 int cv_broadcast (int *) ;
 int cv_timedwait_sig_hires (int *,int *,int ,int ,int ) ;
 scalar_t__ dbuf_cache_above_lowater () ;
 int dbuf_evict_cv ;
 int dbuf_evict_lock ;
 int dbuf_evict_one () ;
 scalar_t__ dbuf_evict_thread_exit ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int thread_exit () ;

__attribute__((used)) static void
dbuf_evict_thread(void *unused)
{
 callb_cpr_t cpr;

 CALLB_CPR_INIT(&cpr, &dbuf_evict_lock, callb_generic_cpr, FTAG);

 mutex_enter(&dbuf_evict_lock);
 while (!dbuf_evict_thread_exit) {
  while (!dbuf_cache_above_lowater() && !dbuf_evict_thread_exit) {
   CALLB_CPR_SAFE_BEGIN(&cpr);
   (void) cv_timedwait_sig_hires(&dbuf_evict_cv,
       &dbuf_evict_lock, SEC2NSEC(1), MSEC2NSEC(1), 0);
   CALLB_CPR_SAFE_END(&cpr, &dbuf_evict_lock);
  }
  mutex_exit(&dbuf_evict_lock);






  while (dbuf_cache_above_lowater() && !dbuf_evict_thread_exit) {
   dbuf_evict_one();
  }

  mutex_enter(&dbuf_evict_lock);
 }

 dbuf_evict_thread_exit = B_FALSE;
 cv_broadcast(&dbuf_evict_cv);
 CALLB_CPR_EXIT(&cpr);
 thread_exit();
}
