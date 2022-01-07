
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int num_parts_; int** residual_bytes_; TYPE_1__* pic_; TYPE_5__* parts_; } ;
typedef TYPE_2__ VP8Encoder ;
struct TYPE_10__ {int** bit_count_; TYPE_2__* enc_; } ;
typedef TYPE_3__ VP8EncIterator ;
struct TYPE_11__ {int error_; } ;
struct TYPE_8__ {int * stats; } ;


 int NUM_MB_SEGMENTS ;
 int VP8AdjustFilterStrength (TYPE_3__* const) ;
 int VP8BitWriterFinish (TYPE_5__*) ;
 int VP8EncFreeBitWriters (TYPE_2__* const) ;

__attribute__((used)) static int PostLoopFinalize(VP8EncIterator* const it, int ok) {
  VP8Encoder* const enc = it->enc_;
  if (ok) {
    int p;
    for (p = 0; p < enc->num_parts_; ++p) {
      VP8BitWriterFinish(enc->parts_ + p);
      ok &= !enc->parts_[p].error_;
    }
  }

  if (ok) {

    if (enc->pic_->stats != ((void*)0)) {
      int i, s;
      for (i = 0; i <= 2; ++i) {
        for (s = 0; s < NUM_MB_SEGMENTS; ++s) {
          enc->residual_bytes_[i][s] = (int)((it->bit_count_[s][i] + 7) >> 3);
        }
      }
    }

    VP8AdjustFilterStrength(it);
  } else {

    VP8EncFreeBitWriters(enc);
  }
  return ok;
}
