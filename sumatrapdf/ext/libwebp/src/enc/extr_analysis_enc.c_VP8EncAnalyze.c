
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int (* Reset ) (int *) ;int (* Sync ) (int *) ;int (* End ) (int *) ;int (* Execute ) (int *) ;int (* Launch ) (int *) ;} ;
typedef TYPE_3__ WebPWorkerInterface ;
struct TYPE_15__ {int num_segments_; } ;
struct TYPE_17__ {int method_; int mb_h_; int const mb_w_; scalar_t__ thread_level_; int alpha_; int uv_alpha_; TYPE_2__ segment_hdr_; TYPE_1__* config_; } ;
typedef TYPE_4__ VP8Encoder ;
struct TYPE_18__ {int const alpha; int const uv_alpha; int alphas; int worker; } ;
struct TYPE_14__ {scalar_t__ emulate_jpeg_size; } ;
typedef TYPE_5__ SegmentJob ;


 int AssignSegments (TYPE_4__* const,int ) ;
 int InitSegmentJob (TYPE_4__* const,TYPE_5__*,int const,int const) ;
 int MergeJobs (TYPE_5__*,TYPE_5__*) ;
 int ResetAllMBInfo (TYPE_4__* const) ;
 TYPE_3__* WebPGetWorkerInterface () ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *) ;
 int stub4 (int *) ;
 int stub5 (int *) ;
 int stub6 (int *) ;
 int stub7 (int *) ;
 int stub8 (int *) ;
 int stub9 (int *) ;

int VP8EncAnalyze(VP8Encoder* const enc) {
  int ok = 1;
  const int do_segments =
      enc->config_->emulate_jpeg_size ||
      (enc->segment_hdr_.num_segments_ > 1) ||
      (enc->method_ <= 1);
  if (do_segments) {
    const int last_row = enc->mb_h_;

    const int split_row = (9 * last_row + 15) >> 4;
    const int total_mb = last_row * enc->mb_w_;




    const int do_mt = 0;

    const WebPWorkerInterface* const worker_interface =
        WebPGetWorkerInterface();
    SegmentJob main_job;
    if (do_mt) {
      SegmentJob side_job;


      InitSegmentJob(enc, &main_job, 0, split_row);
      InitSegmentJob(enc, &side_job, split_row, last_row);


      ok &= worker_interface->Reset(&side_job.worker);

      if (ok) {
        worker_interface->Launch(&side_job.worker);
        worker_interface->Execute(&main_job.worker);
        ok &= worker_interface->Sync(&side_job.worker);
        ok &= worker_interface->Sync(&main_job.worker);
      }
      worker_interface->End(&side_job.worker);
      if (ok) MergeJobs(&side_job, &main_job);
    } else {

      InitSegmentJob(enc, &main_job, 0, last_row);
      worker_interface->Execute(&main_job.worker);
      ok &= worker_interface->Sync(&main_job.worker);
    }
    worker_interface->End(&main_job.worker);
    if (ok) {
      enc->alpha_ = main_job.alpha / total_mb;
      enc->uv_alpha_ = main_job.uv_alpha / total_mb;
      AssignSegments(enc, main_job.alphas);
    }
  } else {
    ResetAllMBInfo(enc);
  }
  return ok;
}
