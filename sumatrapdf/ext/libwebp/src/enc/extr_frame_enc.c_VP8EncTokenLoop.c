
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ VP8RDLevel ;
struct TYPE_21__ {int H; scalar_t__ D; } ;
typedef TYPE_3__ VP8ModeScore ;
struct TYPE_23__ {scalar_t__ use_skip_proba_; scalar_t__ coeffs_; } ;
struct TYPE_20__ {int size_; } ;
struct TYPE_22__ {int mb_w_; int mb_h_; int do_search_; scalar_t__ rd_opt_level_; int num_parts_; int use_tokens_; scalar_t__ max_i4_header_bits_; scalar_t__ percent_; int pic_; scalar_t__ parts_; int tokens_; TYPE_5__ proba_; TYPE_2__ segment_hdr_; TYPE_1__* config_; } ;
typedef TYPE_4__ VP8Encoder ;
typedef TYPE_5__ VP8EncProba ;
typedef int VP8EncIterator ;
struct TYPE_24__ {double value; scalar_t__ do_size_search; int dq; int q; int last_q; int last_value; } ;
struct TYPE_19__ {int pass; } ;
typedef TYPE_6__ PassStats ;


 int ComputeNextQ (TYPE_6__*) ;
 scalar_t__ DQ_LIMIT ;
 int FinalizeTokenProbas (TYPE_5__* const) ;
 double GetPSNR (int,int const) ;
 scalar_t__ HEADER_SIZE_ESTIMATE ;
 int InitPassStats (TYPE_4__* const,TYPE_6__*) ;
 int MIN_COUNT ;
 int PARTITION0_SIZE_LIMIT ;
 int PostLoopFinalize (int *,int) ;
 int PreLoopInitialize (TYPE_4__* const) ;
 scalar_t__ const RD_OPT_BASIC ;
 int RecordTokens (int *,TYPE_3__*,int *) ;
 int ResetSideInfo (int *) ;
 int ResetTokenStats (TYPE_4__* const) ;
 int SetLoopParams (TYPE_4__* const,int ) ;
 int StoreSideInfo (int *) ;
 int VP8CalculateLevelCosts (TYPE_5__* const) ;
 int VP8Decimate (int *,TYPE_3__*,scalar_t__ const) ;
 int VP8EmitTokens (int *,scalar_t__,int const*,int) ;
 scalar_t__ VP8EstimateTokenSize (int *,int const*) ;
 int VP8InitFilter (int *) ;
 int VP8IteratorExport (int *) ;
 int VP8IteratorImport (int *,int *) ;
 int VP8IteratorInit (TYPE_4__* const,int *) ;
 scalar_t__ VP8IteratorNext (int *) ;
 int VP8IteratorProgress (int *,int) ;
 int VP8IteratorSaveBoundary (int *) ;
 int VP8StoreFilterStats (int *) ;
 int VP8TBufferClear (int *) ;
 int VP8_ENC_ERROR_OUT_OF_MEMORY ;
 int WebPEncodingSetError (int ,int ) ;
 scalar_t__ WebPReportProgress (int ,scalar_t__,scalar_t__*) ;
 int assert (int) ;
 scalar_t__ fabs (int ) ;
 int printf (char*,int,int ,double,int ,int ,int ) ;

int VP8EncTokenLoop(VP8Encoder* const enc) {

  int max_count = (enc->mb_w_ * enc->mb_h_) >> 3;
  int num_pass_left = enc->config_->pass;
  const int do_search = enc->do_search_;
  VP8EncIterator it;
  VP8EncProba* const proba = &enc->proba_;
  const VP8RDLevel rd_opt = enc->rd_opt_level_;
  const uint64_t pixel_count = enc->mb_w_ * enc->mb_h_ * 384;
  PassStats stats;
  int ok;

  InitPassStats(enc, &stats);
  ok = PreLoopInitialize(enc);
  if (!ok) return 0;

  if (max_count < MIN_COUNT) max_count = MIN_COUNT;

  assert(enc->num_parts_ == 1);
  assert(enc->use_tokens_);
  assert(proba->use_skip_proba_ == 0);
  assert(rd_opt >= RD_OPT_BASIC);
  assert(num_pass_left > 0);

  while (ok && num_pass_left-- > 0) {
    const int is_last_pass = (fabs(stats.dq) <= DQ_LIMIT) ||
                             (num_pass_left == 0) ||
                             (enc->max_i4_header_bits_ == 0);
    uint64_t size_p0 = 0;
    uint64_t distortion = 0;
    int cnt = max_count;
    VP8IteratorInit(enc, &it);
    SetLoopParams(enc, stats.q);
    if (is_last_pass) {
      ResetTokenStats(enc);
      VP8InitFilter(&it);
    }
    VP8TBufferClear(&enc->tokens_);
    do {
      VP8ModeScore info;
      VP8IteratorImport(&it, ((void*)0));
      if (--cnt < 0) {
        FinalizeTokenProbas(proba);
        VP8CalculateLevelCosts(proba);
        cnt = max_count;
      }
      VP8Decimate(&it, &info, rd_opt);
      ok = RecordTokens(&it, &info, &enc->tokens_);
      if (!ok) {
        WebPEncodingSetError(enc->pic_, VP8_ENC_ERROR_OUT_OF_MEMORY);
        break;
      }
      size_p0 += info.H;
      distortion += info.D;
      if (is_last_pass) {
        StoreSideInfo(&it);
        VP8StoreFilterStats(&it);
        VP8IteratorExport(&it);
        ok = VP8IteratorProgress(&it, 20);
      }
      VP8IteratorSaveBoundary(&it);
    } while (ok && VP8IteratorNext(&it));
    if (!ok) break;

    size_p0 += enc->segment_hdr_.size_;
    if (stats.do_size_search) {
      uint64_t size = FinalizeTokenProbas(&enc->proba_);
      size += VP8EstimateTokenSize(&enc->tokens_,
                                   (const uint8_t*)proba->coeffs_);
      size = (size + size_p0 + 1024) >> 11;
      size += HEADER_SIZE_ESTIMATE;
      stats.value = (double)size;
    } else {
      stats.value = GetPSNR(distortion, pixel_count);
    }






    if (enc->max_i4_header_bits_ > 0 && size_p0 > PARTITION0_SIZE_LIMIT) {
      ++num_pass_left;
      enc->max_i4_header_bits_ >>= 1;
      if (is_last_pass) {
        ResetSideInfo(&it);
      }
      continue;
    }
    if (is_last_pass) {
      break;
    }
    if (do_search) {
      ComputeNextQ(&stats);
    }
  }
  if (ok) {
    if (!stats.do_size_search) {
      FinalizeTokenProbas(&enc->proba_);
    }
    ok = VP8EmitTokens(&enc->tokens_, enc->parts_ + 0,
                       (const uint8_t*)proba->coeffs_, 1);
  }
  ok = ok && WebPReportProgress(enc->pic_, enc->percent_ + 20, &enc->percent_);
  return PostLoopFinalize(&it, ok);
}
