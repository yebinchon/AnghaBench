
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__* alpha_; TYPE_1__* img_; } ;
typedef TYPE_3__ WebPMuxImage ;
typedef int WebPMuxError ;
struct TYPE_16__ {TYPE_3__* images_; } ;
typedef TYPE_4__ WebPMux ;
struct TYPE_17__ {scalar_t__ size; int bytes; } ;
typedef TYPE_5__ WebPData ;
struct TYPE_14__ {TYPE_5__ data_; } ;
struct TYPE_13__ {TYPE_5__ data_; } ;


 scalar_t__ TAG_SIZE ;
 int VP8LCheckSignature (int ,scalar_t__) ;
 int WEBP_MUX_BAD_DATA ;
 int WEBP_MUX_OK ;
 int WebPDataInit (TYPE_5__* const) ;
 TYPE_4__* WebPMuxCreate (TYPE_5__ const* const,int ) ;
 int WebPMuxDelete (TYPE_4__* const) ;
 int assert (int) ;
 scalar_t__ memcmp (int ,char*,scalar_t__) ;

__attribute__((used)) static WebPMuxError GetImageData(const WebPData* const bitstream,
                                 WebPData* const image, WebPData* const alpha,
                                 int* const is_lossless) {
  WebPDataInit(alpha);
  if (bitstream->size < TAG_SIZE ||
      memcmp(bitstream->bytes, "RIFF", TAG_SIZE)) {

    *image = *bitstream;
  } else {

    const WebPMuxImage* wpi;
    WebPMux* const mux = WebPMuxCreate(bitstream, 0);
    if (mux == ((void*)0)) return WEBP_MUX_BAD_DATA;
    wpi = mux->images_;
    assert(wpi != ((void*)0) && wpi->img_ != ((void*)0));
    *image = wpi->img_->data_;
    if (wpi->alpha_ != ((void*)0)) {
      *alpha = wpi->alpha_->data_;
    }
    WebPMuxDelete(mux);
  }
  *is_lossless = VP8LCheckSignature(image->bytes, image->size);
  return WEBP_MUX_OK;
}
