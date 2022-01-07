
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WebPWorker ;
struct TYPE_4__ {scalar_t__ thread_level_; scalar_t__ has_alpha_; scalar_t__ alpha_data_size_; int * alpha_data_; int alpha_worker_; } ;
typedef TYPE_1__ VP8Encoder ;
struct TYPE_5__ {int (* Sync ) (int * const) ;int (* End ) (int * const) ;} ;


 TYPE_2__* WebPGetWorkerInterface () ;
 int WebPSafeFree (int *) ;
 int stub1 (int * const) ;
 int stub2 (int * const) ;

int VP8EncDeleteAlpha(VP8Encoder* const enc) {
  int ok = 1;
  if (enc->thread_level_ > 0) {
    WebPWorker* const worker = &enc->alpha_worker_;

    ok = WebPGetWorkerInterface()->Sync(worker);

    WebPGetWorkerInterface()->End(worker);
  }
  WebPSafeFree(enc->alpha_data_);
  enc->alpha_data_ = ((void*)0);
  enc->alpha_data_size_ = 0;
  enc->has_alpha_ = 0;
  return ok;
}
