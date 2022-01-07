
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_6__ {int tp_minimum; int tp_maximum; int tp_linger; struct TYPE_6__* tp_back; struct TYPE_6__* tp_forw; int tp_attr; int tp_waitcv; int tp_workcv; int tp_busycv; int tp_mutex; } ;
typedef TYPE_1__ tpool_t ;
typedef int pthread_attr_t ;


 int EINVAL ;
 int ENOMEM ;
 int PTHREAD_CREATE_DETACHED ;
 size_t PTHREAD_STACK_MIN ;
 TYPE_1__* calloc (int,int) ;
 int errno ;
 int free (TYPE_1__*) ;
 int pthread_attr_clone (int *,int *) ;
 scalar_t__ pthread_attr_getstack (int *,void**,size_t*) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int thread_pool_lock ;
 TYPE_1__* thread_pools ;

tpool_t *
tpool_create(uint_t min_threads, uint_t max_threads, uint_t linger,
    pthread_attr_t *attr)
{
 tpool_t *tpool;
 void *stackaddr;
 size_t stacksize;
 size_t minstack;
 int error;

 if (min_threads > max_threads || max_threads < 1) {
  errno = EINVAL;
  return (((void*)0));
 }
 if (attr != ((void*)0)) {
  if (pthread_attr_getstack(attr, &stackaddr, &stacksize) != 0) {
   errno = EINVAL;
   return (((void*)0));
  }




  minstack = PTHREAD_STACK_MIN;
  if (stackaddr != ((void*)0)) {
   if (stacksize < minstack || max_threads != 1) {
    errno = EINVAL;
    return (((void*)0));
   }
  } else if (stacksize != 0 && stacksize < minstack) {
   errno = EINVAL;
   return (((void*)0));
  }
 }

 tpool = calloc(1, sizeof (*tpool));
 if (tpool == ((void*)0)) {
  errno = ENOMEM;
  return (((void*)0));
 }
 (void) pthread_mutex_init(&tpool->tp_mutex, ((void*)0));
 (void) pthread_cond_init(&tpool->tp_busycv, ((void*)0));
 (void) pthread_cond_init(&tpool->tp_workcv, ((void*)0));
 (void) pthread_cond_init(&tpool->tp_waitcv, ((void*)0));
 tpool->tp_minimum = min_threads;
 tpool->tp_maximum = max_threads;
 tpool->tp_linger = linger;
 error = pthread_attr_clone(&tpool->tp_attr, attr);
 if (error) {
  free(tpool);
  errno = error;
  return (((void*)0));
 }


 (void) pthread_attr_setdetachstate(&tpool->tp_attr,
     PTHREAD_CREATE_DETACHED);


 pthread_mutex_lock(&thread_pool_lock);
 if (thread_pools == ((void*)0)) {
  tpool->tp_forw = tpool;
  tpool->tp_back = tpool;
  thread_pools = tpool;
 } else {
  thread_pools->tp_back->tp_forw = tpool;
  tpool->tp_forw = thread_pools;
  tpool->tp_back = thread_pools->tp_back;
  thread_pools->tp_back = tpool;
 }
 pthread_mutex_unlock(&thread_pool_lock);

 return (tpool);
}
