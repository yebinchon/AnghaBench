
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int stats_side ;
struct TYPE_23__ {int (* Sync ) (TYPE_2__*) ;int (* End ) (TYPE_2__*) ;int (* Execute ) (TYPE_2__*) ;int (* Launch ) (TYPE_2__*) ;int (* Reset ) (TYPE_2__*) ;int (* Init ) (TYPE_2__* const) ;} ;
typedef TYPE_1__ WebPWorkerInterface ;
struct TYPE_24__ {int hook; int * data2; TYPE_6__* data1; } ;
typedef TYPE_2__ WebPWorker ;
struct TYPE_25__ {int * stats; } ;
typedef TYPE_3__ WebPPicture ;
typedef void* WebPEncodingError ;
struct TYPE_26__ {scalar_t__ thread_level; } ;
typedef TYPE_4__ WebPConfig ;
typedef int WebPAuxStats ;
struct TYPE_27__ {int * palette_; int palette_size_; int transform_bits_; int histo_bits_; } ;
typedef TYPE_5__ VP8LEncoder ;
typedef int VP8LBitWriter ;
struct TYPE_28__ {int num_crunch_configs_; int use_cache_; int red_and_blue_always_zero_; void* err_; TYPE_5__* enc_; int * bw_; int * stats_; TYPE_3__* picture_; TYPE_4__* config_; void** crunch_configs_; } ;
typedef TYPE_6__ StreamEncodeContext ;
typedef void* CrunchConfig ;


 int CRUNCH_CONFIGS_MAX ;
 int EncodeStreamHook ;
 int EncoderAnalyze (TYPE_5__* const,void**,int*,int*) ;
 int EncoderInit (TYPE_5__* const) ;
 int VP8LBitWriterClone (int * const,int *) ;
 int VP8LBitWriterInit (int *,int ) ;
 scalar_t__ VP8LBitWriterNumBytes (int * const) ;
 int VP8LBitWriterSwap (int * const,int *) ;
 int VP8LBitWriterWipeOut (int *) ;
 int VP8LEncoderDelete (TYPE_5__* const) ;
 void* VP8LEncoderNew (TYPE_4__ const* const,TYPE_3__ const* const) ;
 void* VP8_ENC_ERROR_OUT_OF_MEMORY ;
 void* VP8_ENC_OK ;
 TYPE_1__* WebPGetWorkerInterface () ;
 int memcpy (int *,int *,int) ;
 int stub1 (TYPE_2__* const) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;
 int stub4 (TYPE_2__*) ;
 int stub5 (TYPE_2__*) ;
 int stub6 (TYPE_2__*) ;
 int stub7 (TYPE_2__*) ;
 int stub8 (TYPE_2__*) ;

WebPEncodingError VP8LEncodeStream(const WebPConfig* const config,
                                   const WebPPicture* const picture,
                                   VP8LBitWriter* const bw_main,
                                   int use_cache) {
  WebPEncodingError err = VP8_ENC_OK;
  VP8LEncoder* const enc_main = VP8LEncoderNew(config, picture);
  VP8LEncoder* enc_side = ((void*)0);
  CrunchConfig crunch_configs[CRUNCH_CONFIGS_MAX];
  int num_crunch_configs_main, num_crunch_configs_side = 0;
  int idx;
  int red_and_blue_always_zero = 0;
  WebPWorker worker_main, worker_side;
  StreamEncodeContext params_main, params_side;

  WebPAuxStats stats_side;
  VP8LBitWriter bw_side;
  const WebPWorkerInterface* const worker_interface = WebPGetWorkerInterface();
  int ok_main;


  if (enc_main == ((void*)0) ||
      !EncoderAnalyze(enc_main, crunch_configs, &num_crunch_configs_main,
                      &red_and_blue_always_zero) ||
      !EncoderInit(enc_main) || !VP8LBitWriterInit(&bw_side, 0)) {
    err = VP8_ENC_ERROR_OUT_OF_MEMORY;
    goto Error;
  }


  if (config->thread_level > 0) {
    num_crunch_configs_side = num_crunch_configs_main / 2;
    for (idx = 0; idx < num_crunch_configs_side; ++idx) {
      params_side.crunch_configs_[idx] =
          crunch_configs[num_crunch_configs_main - num_crunch_configs_side +
                         idx];
    }
    params_side.num_crunch_configs_ = num_crunch_configs_side;
  }
  num_crunch_configs_main -= num_crunch_configs_side;
  for (idx = 0; idx < num_crunch_configs_main; ++idx) {
    params_main.crunch_configs_[idx] = crunch_configs[idx];
  }
  params_main.num_crunch_configs_ = num_crunch_configs_main;


  {
    const int params_size = (num_crunch_configs_side > 0) ? 2 : 1;
    for (idx = 0; idx < params_size; ++idx) {

      WebPWorker* const worker = (idx == 0) ? &worker_main : &worker_side;
      StreamEncodeContext* const param =
          (idx == 0) ? &params_main : &params_side;
      param->config_ = config;
      param->picture_ = picture;
      param->use_cache_ = use_cache;
      param->red_and_blue_always_zero_ = red_and_blue_always_zero;
      if (idx == 0) {
        param->stats_ = picture->stats;
        param->bw_ = bw_main;
        param->enc_ = enc_main;
      } else {
        param->stats_ = (picture->stats == ((void*)0)) ? ((void*)0) : &stats_side;

        if (!VP8LBitWriterClone(bw_main, &bw_side)) {
          err = VP8_ENC_ERROR_OUT_OF_MEMORY;
          goto Error;
        }
        param->bw_ = &bw_side;

        enc_side = VP8LEncoderNew(config, picture);
        if (enc_side == ((void*)0) || !EncoderInit(enc_side)) {
          err = VP8_ENC_ERROR_OUT_OF_MEMORY;
          goto Error;
        }

        enc_side->histo_bits_ = enc_main->histo_bits_;
        enc_side->transform_bits_ = enc_main->transform_bits_;
        enc_side->palette_size_ = enc_main->palette_size_;
        memcpy(enc_side->palette_, enc_main->palette_,
               sizeof(enc_main->palette_));
        param->enc_ = enc_side;
      }

      worker_interface->Init(worker);
      worker->data1 = param;
      worker->data2 = ((void*)0);
      worker->hook = EncodeStreamHook;
    }
  }


  if (num_crunch_configs_side != 0) {
    if (!worker_interface->Reset(&worker_side)) {
      err = VP8_ENC_ERROR_OUT_OF_MEMORY;
      goto Error;
    }



    if (picture->stats != ((void*)0)) {
      memcpy(&stats_side, picture->stats, sizeof(stats_side));
    }


    params_side.err_ = VP8_ENC_OK;
    worker_interface->Launch(&worker_side);
  }

  worker_interface->Execute(&worker_main);
  ok_main = worker_interface->Sync(&worker_main);
  worker_interface->End(&worker_main);
  if (num_crunch_configs_side != 0) {

    const int ok_side = worker_interface->Sync(&worker_side);
    worker_interface->End(&worker_side);
    if (!ok_main || !ok_side) {
      err = ok_main ? params_side.err_ : params_main.err_;
      goto Error;
    }
    if (VP8LBitWriterNumBytes(&bw_side) < VP8LBitWriterNumBytes(bw_main)) {
      VP8LBitWriterSwap(bw_main, &bw_side);

      if (picture->stats != ((void*)0)) {
        memcpy(picture->stats, &stats_side, sizeof(*picture->stats));
      }

    }
  } else {
    if (!ok_main) {
      err = params_main.err_;
      goto Error;
    }
  }

Error:
  VP8LBitWriterWipeOut(&bw_side);
  VP8LEncoderDelete(enc_main);
  VP8LEncoderDelete(enc_side);
  return err;
}
