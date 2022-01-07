
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* dqm_; } ;
typedef TYPE_3__ VP8Encoder ;
struct TYPE_10__ {int yuv_out2_; int yuv_in_; int *** lf_stats_; int yuv_out_; TYPE_2__* mb_; TYPE_3__* enc_; } ;
typedef TYPE_4__ VP8EncIterator ;
struct TYPE_8__ {int segment_; int type_; scalar_t__ skip_; } ;
struct TYPE_7__ {int fstrength_; int quant_; } ;


 int DoFilter (TYPE_4__* const,int const) ;
 scalar_t__ GetMBSSIM (int ,int ) ;
 int const MAX_LF_LEVELS ;

void VP8StoreFilterStats(VP8EncIterator* const it) {

  int d;
  VP8Encoder* const enc = it->enc_;
  const int s = it->mb_->segment_;
  const int level0 = enc->dqm_[s].fstrength_;


  const int delta_min = -enc->dqm_[s].quant_;
  const int delta_max = enc->dqm_[s].quant_;
  const int step_size = (delta_max - delta_min >= 4) ? 4 : 1;

  if (it->lf_stats_ == ((void*)0)) return;







  if (it->mb_->type_ == 1 && it->mb_->skip_) return;


  (*it->lf_stats_)[s][0] += GetMBSSIM(it->yuv_in_, it->yuv_out_);

  for (d = delta_min; d <= delta_max; d += step_size) {
    const int level = level0 + d;
    if (level <= 0 || level >= MAX_LF_LEVELS) {
      continue;
    }
    DoFilter(it, level);
    (*it->lf_stats_)[s][level] += GetMBSSIM(it->yuv_in_, it->yuv_out2_);
  }



}
