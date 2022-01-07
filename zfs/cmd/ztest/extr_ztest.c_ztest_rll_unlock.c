
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rll_readers; int rll_lock; int rll_cv; int * rll_writer; } ;
typedef TYPE_1__ rll_t ;


 int ASSERT (int) ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
ztest_rll_unlock(rll_t *rll)
{
 mutex_enter(&rll->rll_lock);

 if (rll->rll_writer) {
  ASSERT(rll->rll_readers == 0);
  rll->rll_writer = ((void*)0);
 } else {
  ASSERT(rll->rll_readers != 0);
  ASSERT(rll->rll_writer == ((void*)0));
  rll->rll_readers--;
 }

 if (rll->rll_writer == ((void*)0) && rll->rll_readers == 0)
  cv_broadcast(&rll->rll_cv);

 mutex_exit(&rll->rll_lock);
}
