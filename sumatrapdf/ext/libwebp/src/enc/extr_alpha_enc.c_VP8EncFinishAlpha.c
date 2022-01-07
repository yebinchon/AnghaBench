
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WebPWorker ;
struct TYPE_4__ {scalar_t__ thread_level_; scalar_t__ percent_; int pic_; int alpha_worker_; scalar_t__ has_alpha_; } ;
typedef TYPE_1__ VP8Encoder ;
struct TYPE_5__ {int (* Sync ) (int * const) ;} ;


 TYPE_2__* WebPGetWorkerInterface () ;
 int WebPReportProgress (int ,scalar_t__,scalar_t__*) ;
 int stub1 (int * const) ;

int VP8EncFinishAlpha(VP8Encoder* const enc) {
  if (enc->has_alpha_) {
    if (enc->thread_level_ > 0) {
      WebPWorker* const worker = &enc->alpha_worker_;
      if (!WebPGetWorkerInterface()->Sync(worker)) return 0;
    }
  }
  return WebPReportProgress(enc->pic_, enc->percent_ + 20, &enc->percent_);
}
