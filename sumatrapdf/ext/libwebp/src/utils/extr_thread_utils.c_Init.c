
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status_; } ;
typedef TYPE_1__ WebPWorker ;


 int NOT_OK ;
 int memset (TYPE_1__* const,int ,int) ;

__attribute__((used)) static void Init(WebPWorker* const worker) {
  memset(worker, 0, sizeof(*worker));
  worker->status_ = NOT_OK;
}
