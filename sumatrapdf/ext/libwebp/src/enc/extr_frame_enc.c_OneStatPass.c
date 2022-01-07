
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int uint64_t ;
typedef int VP8RDLevel ;
struct TYPE_15__ {scalar_t__ D; scalar_t__ H; scalar_t__ R; } ;
typedef TYPE_2__ VP8ModeScore ;
struct TYPE_13__ {int nb_skip_; } ;
struct TYPE_14__ {scalar_t__ size_; } ;
struct TYPE_16__ {TYPE_11__ proba_; TYPE_1__ segment_hdr_; } ;
typedef TYPE_3__ VP8Encoder ;
typedef int VP8EncIterator ;
struct TYPE_17__ {double value; scalar_t__ do_size_search; int q; } ;
typedef TYPE_4__ PassStats ;


 scalar_t__ FinalizeSkipProba (TYPE_3__* const) ;
 scalar_t__ FinalizeTokenProbas (TYPE_11__*) ;
 double GetPSNR (int,int const) ;
 int HEADER_SIZE_ESTIMATE ;
 int RecordResiduals (int *,TYPE_2__*) ;
 int SetLoopParams (TYPE_3__* const,int ) ;
 scalar_t__ VP8Decimate (int *,TYPE_2__*,int ) ;
 int VP8IteratorImport (int *,int *) ;
 int VP8IteratorInit (TYPE_3__* const,int *) ;
 scalar_t__ VP8IteratorNext (int *) ;
 int VP8IteratorProgress (int *,int) ;
 int VP8IteratorSaveBoundary (int *) ;

__attribute__((used)) static uint64_t OneStatPass(VP8Encoder* const enc, VP8RDLevel rd_opt,
                            int nb_mbs, int percent_delta,
                            PassStats* const s) {
  VP8EncIterator it;
  uint64_t size = 0;
  uint64_t size_p0 = 0;
  uint64_t distortion = 0;
  const uint64_t pixel_count = nb_mbs * 384;

  VP8IteratorInit(enc, &it);
  SetLoopParams(enc, s->q);
  do {
    VP8ModeScore info;
    VP8IteratorImport(&it, ((void*)0));
    if (VP8Decimate(&it, &info, rd_opt)) {

      ++enc->proba_.nb_skip_;
    }
    RecordResiduals(&it, &info);
    size += info.R + info.H;
    size_p0 += info.H;
    distortion += info.D;
    if (percent_delta && !VP8IteratorProgress(&it, percent_delta)) {
      return 0;
    }
    VP8IteratorSaveBoundary(&it);
  } while (VP8IteratorNext(&it) && --nb_mbs > 0);

  size_p0 += enc->segment_hdr_.size_;
  if (s->do_size_search) {
    size += FinalizeSkipProba(enc);
    size += FinalizeTokenProbas(&enc->proba_);
    size = ((size + size_p0 + 1024) >> 11) + HEADER_SIZE_ESTIMATE;
    s->value = (double)size;
  } else {
    s->value = GetPSNR(distortion, pixel_count);
  }
  return size_p0;
}
