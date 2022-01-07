
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int num_segments_; } ;
struct TYPE_12__ {int alpha_; int uv_alpha_; int dq_uv_dc_; int dq_uv_ac_; scalar_t__ dq_y2_ac_; scalar_t__ dq_y2_dc_; scalar_t__ dq_y1_dc_; TYPE_3__* config_; void* base_quant_; TYPE_2__* dqm_; TYPE_1__ segment_hdr_; } ;
typedef TYPE_4__ VP8Encoder ;
struct TYPE_11__ {int sns_strength; scalar_t__ emulate_jpeg_size; } ;
struct TYPE_10__ {double const alpha_; void* quant_; } ;


 int MAX_ALPHA ;
 int MAX_DQ_UV ;
 int MID_ALPHA ;
 int MIN_ALPHA ;
 int MIN_DQ_UV ;
 int NUM_MB_SEGMENTS ;
 double QualityToCompression (double const) ;
 double QualityToJPEGCompression (double const,int) ;
 int SNS_TO_DQ ;
 int SetupFilterStrength (TYPE_4__* const) ;
 int SetupMatrices (TYPE_4__* const) ;
 int SimplifySegments (TYPE_4__* const) ;
 int assert (int) ;
 void* clip (int const,int,int) ;
 double pow (double const,double const) ;

void VP8SetSegmentParams(VP8Encoder* const enc, float quality) {
  int i;
  int dq_uv_ac, dq_uv_dc;
  const int num_segments = enc->segment_hdr_.num_segments_;
  const double amp = SNS_TO_DQ * enc->config_->sns_strength / 100. / 128.;
  const double Q = quality / 100.;
  const double c_base = enc->config_->emulate_jpeg_size ?
      QualityToJPEGCompression(Q, enc->alpha_ / 255.) :
      QualityToCompression(Q);
  for (i = 0; i < num_segments; ++i) {


    const double expn = 1. - amp * enc->dqm_[i].alpha_;
    const double c = pow(c_base, expn);
    const int q = (int)(127. * (1. - c));
    assert(expn > 0.);
    enc->dqm_[i].quant_ = clip(q, 0, 127);
  }


  enc->base_quant_ = enc->dqm_[0].quant_;


  for (i = num_segments; i < NUM_MB_SEGMENTS; ++i) {
    enc->dqm_[i].quant_ = enc->base_quant_;
  }




  dq_uv_ac = (enc->uv_alpha_ - MID_ALPHA) * (MAX_DQ_UV - MIN_DQ_UV)
                                          / (MAX_ALPHA - MIN_ALPHA);

  dq_uv_ac = dq_uv_ac * enc->config_->sns_strength / 100;

  dq_uv_ac = clip(dq_uv_ac, MIN_DQ_UV, MAX_DQ_UV);



  dq_uv_dc = -4 * enc->config_->sns_strength / 100;
  dq_uv_dc = clip(dq_uv_dc, -15, 15);

  enc->dq_y1_dc_ = 0;
  enc->dq_y2_dc_ = 0;
  enc->dq_y2_ac_ = 0;
  enc->dq_uv_dc_ = dq_uv_dc;
  enc->dq_uv_ac_ = dq_uv_ac;

  SetupFilterStrength(enc);

  if (num_segments > 1) SimplifySegments(enc);

  SetupMatrices(enc);
}
