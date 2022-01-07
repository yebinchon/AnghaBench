
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rll_lock; int * rll_writer; int rll_cv; scalar_t__ rll_readers; } ;
typedef TYPE_1__ rll_t ;
typedef scalar_t__ rl_type_t ;


 scalar_t__ RL_READER ;
 int * curthread ;
 int cv_wait (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
ztest_rll_lock(rll_t *rll, rl_type_t type)
{
 mutex_enter(&rll->rll_lock);

 if (type == RL_READER) {
  while (rll->rll_writer != ((void*)0))
   (void) cv_wait(&rll->rll_cv, &rll->rll_lock);
  rll->rll_readers++;
 } else {
  while (rll->rll_writer != ((void*)0) || rll->rll_readers)
   (void) cv_wait(&rll->rll_cv, &rll->rll_lock);
  rll->rll_writer = curthread;
 }

 mutex_exit(&rll->rll_lock);
}
