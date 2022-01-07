
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


typedef int uint8_t ;
struct TYPE_20__ {int argb_stride; int height; scalar_t__ argb; } ;
typedef TYPE_4__ WebPPicture ;
struct TYPE_23__ {int size; int bytes; } ;
struct TYPE_21__ {int y_offset; int x_offset; TYPE_7__ bitstream; } ;
typedef TYPE_5__ WebPMuxFrameInfo ;
struct TYPE_17__ {int stride; int size; int * rgba; } ;
struct TYPE_18__ {TYPE_1__ RGBA; } ;
struct TYPE_19__ {int is_external_memory; TYPE_2__ u; int colorspace; } ;
struct TYPE_16__ {int height; int width; } ;
struct TYPE_22__ {TYPE_3__ output; TYPE_12__ input; } ;
typedef TYPE_6__ WebPDecoderConfig ;
typedef TYPE_7__ WebPData ;


 int MODE_BGRA ;
 scalar_t__ VP8_STATUS_OK ;
 scalar_t__ WebPDecode (int ,int ,TYPE_6__*) ;
 scalar_t__ WebPGetFeatures (int ,int ,TYPE_12__*) ;
 int WebPInitDecoderConfig (TYPE_6__*) ;
 int WebPPictureView (TYPE_4__* const,int ,int ,int ,int ,TYPE_4__*) ;
 int WebPUtilClearPic (TYPE_4__* const,int *) ;

__attribute__((used)) static int DecodeFrameOntoCanvas(const WebPMuxFrameInfo* const frame,
                                 WebPPicture* const canvas) {
  const WebPData* const image = &frame->bitstream;
  WebPPicture sub_image;
  WebPDecoderConfig config;
  WebPInitDecoderConfig(&config);
  WebPUtilClearPic(canvas, ((void*)0));
  if (WebPGetFeatures(image->bytes, image->size, &config.input) !=
      VP8_STATUS_OK) {
    return 0;
  }
  if (!WebPPictureView(canvas, frame->x_offset, frame->y_offset,
                       config.input.width, config.input.height, &sub_image)) {
    return 0;
  }
  config.output.is_external_memory = 1;
  config.output.colorspace = MODE_BGRA;
  config.output.u.RGBA.rgba = (uint8_t*)sub_image.argb;
  config.output.u.RGBA.stride = sub_image.argb_stride * 4;
  config.output.u.RGBA.size = config.output.u.RGBA.stride * sub_image.height;

  if (WebPDecode(image->bytes, image->size, &config) != VP8_STATUS_OK) {
    return 0;
  }
  return 1;
}
