
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {unsigned int* segments_; } ;
struct TYPE_8__ {int num_segments_; int update_map_; } ;
struct TYPE_7__ {TYPE_1__* dqm_; TYPE_4__ proba_; TYPE_3__ segment_hdr_; } ;
typedef TYPE_2__ VP8Encoder ;
typedef TYPE_3__ VP8EncSegmentHeader ;
typedef TYPE_4__ VP8EncProba ;
typedef int VP8BitWriter ;
struct TYPE_6__ {int fstrength_; int quant_; } ;


 int NUM_MB_SEGMENTS ;
 scalar_t__ VP8PutBitUniform (int * const,int const) ;
 int VP8PutBits (int * const,unsigned int,int) ;
 int VP8PutSignedBits (int * const,int ,int) ;

__attribute__((used)) static void PutSegmentHeader(VP8BitWriter* const bw,
                             const VP8Encoder* const enc) {
  const VP8EncSegmentHeader* const hdr = &enc->segment_hdr_;
  const VP8EncProba* const proba = &enc->proba_;
  if (VP8PutBitUniform(bw, (hdr->num_segments_ > 1))) {

    const int update_data = 1;
    int s;
    VP8PutBitUniform(bw, hdr->update_map_);
    if (VP8PutBitUniform(bw, update_data)) {

      VP8PutBitUniform(bw, 1);
      for (s = 0; s < NUM_MB_SEGMENTS; ++s) {
        VP8PutSignedBits(bw, enc->dqm_[s].quant_, 7);
      }
      for (s = 0; s < NUM_MB_SEGMENTS; ++s) {
        VP8PutSignedBits(bw, enc->dqm_[s].fstrength_, 6);
      }
    }
    if (hdr->update_map_) {
      for (s = 0; s < 3; ++s) {
        if (VP8PutBitUniform(bw, (proba->segments_[s] != 255u))) {
          VP8PutBits(bw, proba->segments_[s], 8);
        }
      }
    }
  }
}
