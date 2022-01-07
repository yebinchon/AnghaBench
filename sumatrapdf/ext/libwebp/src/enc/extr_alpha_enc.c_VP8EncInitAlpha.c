
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hook; int * data2; TYPE_2__* data1; } ;
typedef TYPE_1__ WebPWorker ;
struct TYPE_7__ {scalar_t__ thread_level_; TYPE_1__ alpha_worker_; scalar_t__ alpha_data_size_; int * alpha_data_; int pic_; int has_alpha_; } ;
typedef TYPE_2__ VP8Encoder ;
struct TYPE_8__ {int (* Init ) (TYPE_1__* const) ;} ;


 int CompressAlphaJob ;
 TYPE_4__* WebPGetWorkerInterface () ;
 int WebPInitAlphaProcessing () ;
 int WebPPictureHasTransparency (int ) ;
 int stub1 (TYPE_1__* const) ;

void VP8EncInitAlpha(VP8Encoder* const enc) {
  WebPInitAlphaProcessing();
  enc->has_alpha_ = WebPPictureHasTransparency(enc->pic_);
  enc->alpha_data_ = ((void*)0);
  enc->alpha_data_size_ = 0;
  if (enc->thread_level_ > 0) {
    WebPWorker* const worker = &enc->alpha_worker_;
    WebPGetWorkerInterface()->Init(worker);
    worker->data1 = enc;
    worker->data2 = ((void*)0);
    worker->hook = CompressAlphaJob;
  }
}
