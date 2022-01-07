
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int raidz_test_opts_t ;
struct TYPE_2__ {scalar_t__ rto_sanity; } ;


 int RAND_MAX ;
 int SWEEP_ERROR ;
 int VERIFY (int ) ;
 int cv_signal (int *) ;
 int failed_opts ;
 int free_slots ;
 int memcpy (int *,int *,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rand () ;
 TYPE_1__ rto_opts ;
 int run_test (int *) ;
 int sem_cv ;
 int sem_mtx ;
 int sweep_state ;
 int thread_exit () ;
 int umem_free (int *,int) ;

__attribute__((used)) static void
sweep_thread(void *arg)
{
 int err = 0;
 raidz_test_opts_t *opts = (raidz_test_opts_t *)arg;
 VERIFY(opts != ((void*)0));

 err = run_test(opts);

 if (rto_opts.rto_sanity) {

  if (rand() < (RAND_MAX/4))
   err = 1;
 }

 if (0 != err) {
  mutex_enter(&sem_mtx);
  memcpy(&failed_opts, opts, sizeof (raidz_test_opts_t));
  sweep_state = SWEEP_ERROR;
  mutex_exit(&sem_mtx);
 }

 umem_free(opts, sizeof (raidz_test_opts_t));


 mutex_enter(&sem_mtx);
 free_slots++;
 cv_signal(&sem_cv);
 mutex_exit(&sem_mtx);

 thread_exit();
}
