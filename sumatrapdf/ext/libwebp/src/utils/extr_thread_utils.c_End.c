
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int condition_; int mutex_; int thread_; } ;
typedef TYPE_1__ WebPWorkerImpl ;
struct TYPE_7__ {scalar_t__ status_; int * impl_; } ;
typedef TYPE_2__ WebPWorker ;


 int ChangeState (TYPE_2__* const,scalar_t__) ;
 scalar_t__ NOT_OK ;
 int WebPSafeFree (TYPE_1__* const) ;
 int assert (int) ;
 int pthread_cond_destroy (int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void End(WebPWorker* const worker) {
  worker->status_ = NOT_OK;
  assert(worker->impl_ == ((void*)0));

  assert(worker->status_ == NOT_OK);
}
