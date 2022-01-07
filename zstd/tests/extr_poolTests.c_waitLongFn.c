
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ val; scalar_t__ max; scalar_t__ countdown; int mut; int cond; } ;
typedef TYPE_1__ poolTest_t ;


 int UTIL_sleepMilli (int) ;
 int ZSTD_pthread_cond_signal (int *) ;
 int ZSTD_pthread_mutex_lock (int *) ;
 int ZSTD_pthread_mutex_unlock (int *) ;

__attribute__((used)) static void waitLongFn(void *opaque) {
  poolTest_t* const test = (poolTest_t*) opaque;
  ZSTD_pthread_mutex_lock(&test->mut);
  test->val++;
  if (test->val > test->max)
      test->max = test->val;
  ZSTD_pthread_mutex_unlock(&test->mut);

  UTIL_sleepMilli(10);

  ZSTD_pthread_mutex_lock(&test->mut);
  test->val--;
  test->countdown--;
  if (test->countdown == 0)
      ZSTD_pthread_cond_signal(&test->cond);
  ZSTD_pthread_mutex_unlock(&test->mut);
}
