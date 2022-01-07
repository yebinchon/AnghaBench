
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status_; int had_error; } ;
typedef TYPE_1__ WebPWorker ;


 int ChangeState (TYPE_1__* const,scalar_t__) ;
 scalar_t__ OK ;
 int assert (int) ;

__attribute__((used)) static int Sync(WebPWorker* const worker) {



  assert(worker->status_ <= OK);
  return !worker->had_error;
}
