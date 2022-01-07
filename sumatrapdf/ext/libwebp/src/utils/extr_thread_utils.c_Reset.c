
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int condition_; int mutex_; int thread_; } ;
typedef TYPE_1__ WebPWorkerImpl ;
struct TYPE_8__ {scalar_t__ status_; int * impl_; scalar_t__ had_error; } ;
typedef TYPE_2__ WebPWorker ;


 scalar_t__ OK ;
 int Sync (TYPE_2__* const) ;
 int ThreadLoop ;
 scalar_t__ WebPSafeCalloc (int,int) ;
 int WebPSafeFree (TYPE_1__* const) ;
 int assert (int) ;
 int pthread_cond_destroy (int *) ;
 scalar_t__ pthread_cond_init (int *,int *) ;
 int pthread_create (int *,int *,int ,TYPE_2__* const) ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int Reset(WebPWorker* const worker) {
  int ok = 1;
  worker->had_error = 0;
  if (worker->status_ < OK) {
    worker->status_ = OK;

  } else if (worker->status_ > OK) {
    ok = Sync(worker);
  }
  assert(!ok || (worker->status_ == OK));
  return ok;
}
