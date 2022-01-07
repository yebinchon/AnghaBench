
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int beta_; int fstrength_; int quant_; } ;
typedef TYPE_3__ VP8SegmentInfo ;
struct TYPE_6__ {int level_; int simple_; int sharpness_; } ;
struct TYPE_9__ {TYPE_2__* config_; TYPE_1__ filter_hdr_; TYPE_3__* dqm_; } ;
typedef TYPE_4__ VP8Encoder ;
struct TYPE_7__ {int filter_strength; scalar_t__ filter_type; int filter_sharpness; } ;


 int const FSTRENGTH_CUTOFF ;
 int NUM_MB_SEGMENTS ;
 int VP8FilterStrengthFromDelta (int ,int const) ;
 size_t clip (int ,int ,int) ;
 int* kAcTable ;

__attribute__((used)) static void SetupFilterStrength(VP8Encoder* const enc) {
  int i;

  const int level0 = 5 * enc->config_->filter_strength;
  for (i = 0; i < NUM_MB_SEGMENTS; ++i) {
    VP8SegmentInfo* const m = &enc->dqm_[i];

    const int qstep = kAcTable[clip(m->quant_, 0, 127)] >> 2;
    const int base_strength =
        VP8FilterStrengthFromDelta(enc->filter_hdr_.sharpness_, qstep);

    const int f = base_strength * level0 / (256 + m->beta_);
    m->fstrength_ = (f < FSTRENGTH_CUTOFF) ? 0 : (f > 63) ? 63 : f;
  }

  enc->filter_hdr_.level_ = enc->dqm_[0].fstrength_;
  enc->filter_hdr_.simple_ = (enc->config_->filter_type == 0);
  enc->filter_hdr_.sharpness_ = enc->config_->filter_sharpness;
}
