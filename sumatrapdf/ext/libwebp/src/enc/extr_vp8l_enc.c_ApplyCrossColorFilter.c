
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WebPEncodingError ;
typedef int VP8LHashChain ;
struct TYPE_3__ {int transform_bits_; int * refs_; int hash_chain_; int transform_data_; int argb_; } ;
typedef TYPE_1__ VP8LEncoder ;
typedef int VP8LBitWriter ;
typedef int VP8LBackwardRefs ;


 int const CROSS_COLOR_TRANSFORM ;
 int EncodeImageNoHuffman (int * const,int ,int *,int *,int *,int const,int const,int,int) ;
 int const TRANSFORM_PRESENT ;
 int VP8LColorSpaceTransform (int,int,int const,int,int ,int ) ;
 int VP8LPutBits (int * const,int const,int) ;
 int VP8LSubSampleSize (int,int const) ;
 int assert (int) ;

__attribute__((used)) static WebPEncodingError ApplyCrossColorFilter(const VP8LEncoder* const enc,
                                               int width, int height,
                                               int quality, int low_effort,
                                               VP8LBitWriter* const bw) {
  const int ccolor_transform_bits = enc->transform_bits_;
  const int transform_width = VP8LSubSampleSize(width, ccolor_transform_bits);
  const int transform_height = VP8LSubSampleSize(height, ccolor_transform_bits);

  VP8LColorSpaceTransform(width, height, ccolor_transform_bits, quality,
                          enc->argb_, enc->transform_data_);
  VP8LPutBits(bw, TRANSFORM_PRESENT, 1);
  VP8LPutBits(bw, CROSS_COLOR_TRANSFORM, 2);
  assert(ccolor_transform_bits >= 2);
  VP8LPutBits(bw, ccolor_transform_bits - 2, 3);
  return EncodeImageNoHuffman(
      bw, enc->transform_data_, (VP8LHashChain*)&enc->hash_chain_,
      (VP8LBackwardRefs*)&enc->refs_[0],
      (VP8LBackwardRefs*)&enc->refs_[1], transform_width, transform_height,
      quality, low_effort);
}
