
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* teardown ) (TYPE_1__* const) ;} ;
typedef TYPE_1__ VP8Io ;
struct TYPE_8__ {scalar_t__ mt_method_; int worker_; } ;
typedef TYPE_2__ VP8Decoder ;
struct TYPE_9__ {int (* Sync ) (int *) ;} ;


 TYPE_4__* WebPGetWorkerInterface () ;
 int stub1 (int *) ;
 int stub2 (TYPE_1__* const) ;

int VP8ExitCritical(VP8Decoder* const dec, VP8Io* const io) {
  int ok = 1;
  if (dec->mt_method_ > 0) {
    ok = WebPGetWorkerInterface()->Sync(&dec->worker_);
  }

  if (io->teardown != ((void*)0)) {
    io->teardown(io);
  }
  return ok;
}
