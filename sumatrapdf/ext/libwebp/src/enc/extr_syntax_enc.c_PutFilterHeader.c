
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i4x4_lf_delta_; int const simple_; int sharpness_; int level_; } ;
typedef TYPE_1__ VP8EncFilterHeader ;
typedef int VP8BitWriter ;


 scalar_t__ VP8PutBitUniform (int * const,int const) ;
 int VP8PutBits (int * const,int ,int) ;
 int VP8PutSignedBits (int * const,scalar_t__,int) ;

__attribute__((used)) static void PutFilterHeader(VP8BitWriter* const bw,
                            const VP8EncFilterHeader* const hdr) {
  const int use_lf_delta = (hdr->i4x4_lf_delta_ != 0);
  VP8PutBitUniform(bw, hdr->simple_);
  VP8PutBits(bw, hdr->level_, 6);
  VP8PutBits(bw, hdr->sharpness_, 3);
  if (VP8PutBitUniform(bw, use_lf_delta)) {

    const int need_update = (hdr->i4x4_lf_delta_ != 0);
    if (VP8PutBitUniform(bw, need_update)) {

      VP8PutBits(bw, 0, 4);

      VP8PutSignedBits(bw, hdr->i4x4_lf_delta_, 6);
      VP8PutBits(bw, 0, 3);
    }
  }
}
