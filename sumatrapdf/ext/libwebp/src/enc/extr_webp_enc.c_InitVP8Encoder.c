
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_15__ {int width; int height; } ;
typedef TYPE_1__ WebPPicture ;
struct TYPE_16__ {scalar_t__ filter_strength; scalar_t__ autofilter; float quality; int pass; int partitions; int filter_type; } ;
typedef TYPE_2__ WebPConfig ;
typedef int VP8SegmentInfo ;
typedef int VP8ModeScore ;
typedef int VP8MBInfo ;
struct TYPE_17__ {int num_parts_; int mb_w_; int mb_h_; int preds_w_; int profile_; int tokens_; scalar_t__ percent_; TYPE_1__* pic_; TYPE_2__* config_; int * top_derr_; int * y_top_; int * uv_top_; int * lf_stats_; int * nz_; int * preds_; int * mb_info_; } ;
typedef TYPE_3__ VP8Encoder ;
typedef int VP8EncProba ;
typedef int VP8EncIterator ;
typedef int LFStats ;
typedef int DError ;


 float ERROR_DIFFUSION_QUALITY ;
 int MapConfigToTools (TYPE_3__*) ;
 int ResetBoundaryPredictions (TYPE_3__*) ;
 int ResetFilterHeader (TYPE_3__*) ;
 int ResetSegmentHeader (TYPE_3__*) ;
 int VP8DefaultProbas (TYPE_3__*) ;
 int VP8EncDspCostInit () ;
 int VP8EncDspInit () ;
 int VP8EncInitAlpha (TYPE_3__*) ;
 int VP8TBufferInit (int *,int) ;
 int VP8_ENC_ERROR_OUT_OF_MEMORY ;
 scalar_t__ WEBP_ALIGN (int *) ;
 int const WEBP_ALIGN_CST ;
 int WebPEncodingSetError (TYPE_1__* const,int ) ;
 scalar_t__ WebPSafeMalloc (int const,int) ;
 int assert (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int printf (char*,...) ;

__attribute__((used)) static VP8Encoder* InitVP8Encoder(const WebPConfig* const config,
                                  WebPPicture* const picture) {
  VP8Encoder* enc;
  const int use_filter =
      (config->filter_strength > 0) || (config->autofilter > 0);
  const int mb_w = (picture->width + 15) >> 4;
  const int mb_h = (picture->height + 15) >> 4;
  const int preds_w = 4 * mb_w + 1;
  const int preds_h = 4 * mb_h + 1;
  const size_t preds_size = preds_w * preds_h * sizeof(*enc->preds_);
  const int top_stride = mb_w * 16;
  const size_t nz_size = (mb_w + 1) * sizeof(*enc->nz_) + WEBP_ALIGN_CST;
  const size_t info_size = mb_w * mb_h * sizeof(*enc->mb_info_);
  const size_t samples_size =
      2 * top_stride * sizeof(*enc->y_top_)
      + WEBP_ALIGN_CST;
  const size_t lf_stats_size =
      config->autofilter ? sizeof(*enc->lf_stats_) + WEBP_ALIGN_CST : 0;
  const size_t top_derr_size =
      (config->quality <= ERROR_DIFFUSION_QUALITY || config->pass > 1) ?
          mb_w * sizeof(*enc->top_derr_) : 0;
  uint8_t* mem;
  const uint64_t size = (uint64_t)sizeof(*enc)
                      + WEBP_ALIGN_CST
                      + info_size
                      + preds_size
                      + samples_size
                      + top_derr_size
                      + nz_size
                      + lf_stats_size;
  mem = (uint8_t*)WebPSafeMalloc(size, sizeof(*mem));
  if (mem == ((void*)0)) {
    WebPEncodingSetError(picture, VP8_ENC_ERROR_OUT_OF_MEMORY);
    return ((void*)0);
  }
  enc = (VP8Encoder*)mem;
  mem = (uint8_t*)WEBP_ALIGN(mem + sizeof(*enc));
  memset(enc, 0, sizeof(*enc));
  enc->num_parts_ = 1 << config->partitions;
  enc->mb_w_ = mb_w;
  enc->mb_h_ = mb_h;
  enc->preds_w_ = preds_w;
  enc->mb_info_ = (VP8MBInfo*)mem;
  mem += info_size;
  enc->preds_ = mem + 1 + enc->preds_w_;
  mem += preds_size;
  enc->nz_ = 1 + (uint32_t*)WEBP_ALIGN(mem);
  mem += nz_size;
  enc->lf_stats_ = lf_stats_size ? (LFStats*)WEBP_ALIGN(mem) : ((void*)0);
  mem += lf_stats_size;


  mem = (uint8_t*)WEBP_ALIGN(mem);
  enc->y_top_ = mem;
  enc->uv_top_ = enc->y_top_ + top_stride;
  mem += 2 * top_stride;
  enc->top_derr_ = top_derr_size ? (DError*)mem : ((void*)0);
  mem += top_derr_size;
  assert(mem <= (uint8_t*)enc + size);

  enc->config_ = config;
  enc->profile_ = use_filter ? ((config->filter_type == 1) ? 0 : 1) : 2;
  enc->pic_ = picture;
  enc->percent_ = 0;

  MapConfigToTools(enc);
  VP8EncDspInit();
  VP8DefaultProbas(enc);
  ResetSegmentHeader(enc);
  ResetFilterHeader(enc);
  ResetBoundaryPredictions(enc);
  VP8EncDspCostInit();
  VP8EncInitAlpha(enc);



  {
    const float scale = 1.f + config->quality * 5.f / 100.f;
    VP8TBufferInit(&enc->tokens_, (int)(mb_w * mb_h * 4 * scale));
  }
  return enc;
}
