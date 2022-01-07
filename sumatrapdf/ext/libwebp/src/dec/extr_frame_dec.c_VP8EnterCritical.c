
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VP8StatusCode ;
struct TYPE_8__ {int const crop_left; int const crop_top; int crop_bottom; int crop_right; scalar_t__ bypass_filtering; int (* setup ) (TYPE_1__* const) ;} ;
typedef TYPE_1__ VP8Io ;
struct TYPE_9__ {size_t filter_type_; int tl_mb_x_; int tl_mb_y_; int br_mb_y_; int br_mb_x_; int mb_w_; int mb_h_; int status_; } ;
typedef TYPE_2__ VP8Decoder ;


 int PrecomputeFilterStrengths (TYPE_2__* const) ;
 int VP8SetError (TYPE_2__* const,int ,char*) ;
 int VP8_STATUS_OK ;
 int VP8_STATUS_USER_ABORT ;
 int* kFilterExtraRows ;
 int stub1 (TYPE_1__* const) ;

VP8StatusCode VP8EnterCritical(VP8Decoder* const dec, VP8Io* const io) {


  if (io->setup != ((void*)0) && !io->setup(io)) {
    VP8SetError(dec, VP8_STATUS_USER_ABORT, "Frame setup failed");
    return dec->status_;
  }


  if (io->bypass_filtering) {
    dec->filter_type_ = 0;
  }
  {
    const int extra_pixels = kFilterExtraRows[dec->filter_type_];
    if (dec->filter_type_ == 2) {

      dec->tl_mb_x_ = 0;
      dec->tl_mb_y_ = 0;
    } else {




      dec->tl_mb_x_ = (io->crop_left - extra_pixels) >> 4;
      dec->tl_mb_y_ = (io->crop_top - extra_pixels) >> 4;
      if (dec->tl_mb_x_ < 0) dec->tl_mb_x_ = 0;
      if (dec->tl_mb_y_ < 0) dec->tl_mb_y_ = 0;
    }

    dec->br_mb_y_ = (io->crop_bottom + 15 + extra_pixels) >> 4;
    dec->br_mb_x_ = (io->crop_right + 15 + extra_pixels) >> 4;
    if (dec->br_mb_x_ > dec->mb_w_) {
      dec->br_mb_x_ = dec->mb_w_;
    }
    if (dec->br_mb_y_ > dec->mb_h_) {
      dec->br_mb_y_ = dec->mb_h_;
    }
  }
  PrecomputeFilterStrengths(dec);
  return VP8_STATUS_OK;
}
