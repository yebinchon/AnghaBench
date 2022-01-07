
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int had_error; int data2; int data1; int (* hook ) (int ,int ) ;} ;
typedef TYPE_1__ WebPWorker ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void Execute(WebPWorker* const worker) {
  if (worker->hook != ((void*)0)) {
    worker->had_error |= !worker->hook(worker->data1, worker->data2);
  }
}
