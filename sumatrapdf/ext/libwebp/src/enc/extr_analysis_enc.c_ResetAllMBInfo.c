
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mb_w_; int mb_h_; scalar_t__ percent_; int pic_; scalar_t__ uv_alpha_; scalar_t__ alpha_; TYPE_1__* dqm_; int * mb_info_; } ;
typedef TYPE_2__ VP8Encoder ;
struct TYPE_4__ {scalar_t__ beta_; scalar_t__ alpha_; } ;


 int DefaultMBInfo (int *) ;
 int WebPReportProgress (int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void ResetAllMBInfo(VP8Encoder* const enc) {
  int n;
  for (n = 0; n < enc->mb_w_ * enc->mb_h_; ++n) {
    DefaultMBInfo(&enc->mb_info_[n]);
  }

  enc->dqm_[0].alpha_ = 0;
  enc->dqm_[0].beta_ = 0;

  enc->alpha_ = 0;
  enc->uv_alpha_ = 0;
  WebPReportProgress(enc->pic_, enc->percent_ + 20, &enc->percent_);
}
