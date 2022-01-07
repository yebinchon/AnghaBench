
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WebPWorker ;
struct TYPE_5__ {scalar_t__ thread_level_; int alpha_worker_; scalar_t__ has_alpha_; } ;
typedef TYPE_1__ VP8Encoder ;
struct TYPE_6__ {int (* Launch ) (int * const) ;int (* Reset ) (int * const) ;} ;


 int CompressAlphaJob (TYPE_1__* const,int *) ;
 TYPE_2__* WebPGetWorkerInterface () ;
 int stub1 (int * const) ;
 int stub2 (int * const) ;

int VP8EncStartAlpha(VP8Encoder* const enc) {
  if (enc->has_alpha_) {
    if (enc->thread_level_ > 0) {
      WebPWorker* const worker = &enc->alpha_worker_;

      if (!WebPGetWorkerInterface()->Reset(worker)) {
        return 0;
      }
      WebPGetWorkerInterface()->Launch(worker);
      return 1;
    } else {
      return CompressAlphaJob(enc, ((void*)0));
    }
  }
  return 1;
}
