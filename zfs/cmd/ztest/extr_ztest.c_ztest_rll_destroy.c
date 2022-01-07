
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rll_readers; int rll_cv; int rll_lock; int * rll_writer; } ;
typedef TYPE_1__ rll_t ;


 int ASSERT (int) ;
 int cv_destroy (int *) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void
ztest_rll_destroy(rll_t *rll)
{
 ASSERT(rll->rll_writer == ((void*)0));
 ASSERT(rll->rll_readers == 0);
 mutex_destroy(&rll->rll_lock);
 cv_destroy(&rll->rll_cv);
}
