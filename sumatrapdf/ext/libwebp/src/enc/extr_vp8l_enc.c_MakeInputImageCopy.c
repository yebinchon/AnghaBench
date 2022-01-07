
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int width; int height; int argb_stride; int * argb; } ;
typedef TYPE_1__ WebPPicture ;
typedef scalar_t__ WebPEncodingError ;
struct TYPE_6__ {scalar_t__ argb_content_; int const current_width_; int * argb_; TYPE_1__* pic_; } ;
typedef TYPE_2__ VP8LEncoder ;


 scalar_t__ AllocateTransformBuffer (TYPE_2__* const,int const,int const) ;
 scalar_t__ VP8_ENC_OK ;
 int assert (int) ;
 scalar_t__ kEncoderARGB ;
 int memcpy (int *,int const*,int const) ;

__attribute__((used)) static WebPEncodingError MakeInputImageCopy(VP8LEncoder* const enc) {
  WebPEncodingError err = VP8_ENC_OK;
  const WebPPicture* const picture = enc->pic_;
  const int width = picture->width;
  const int height = picture->height;

  err = AllocateTransformBuffer(enc, width, height);
  if (err != VP8_ENC_OK) return err;
  if (enc->argb_content_ == kEncoderARGB) return VP8_ENC_OK;

  {
    uint32_t* dst = enc->argb_;
    const uint32_t* src = picture->argb;
    int y;
    for (y = 0; y < height; ++y) {
      memcpy(dst, src, width * sizeof(*dst));
      dst += width;
      src += picture->argb_stride;
    }
  }
  enc->argb_content_ = kEncoderARGB;
  assert(enc->current_width_ == width);
  return VP8_ENC_OK;
}
