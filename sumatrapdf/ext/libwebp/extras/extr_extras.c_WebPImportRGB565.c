
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int use_argb; int* argb; int height; int width; int argb_stride; int colorspace; } ;
typedef TYPE_1__ WebPPicture ;


 int WEBP_YUV420 ;
 int WebPPictureAlloc (TYPE_1__*) ;

int WebPImportRGB565(const uint8_t* rgb565, WebPPicture* pic) {
  int x, y;
  uint32_t* dst;
  if (pic == ((void*)0) || rgb565 == ((void*)0)) return 0;
  pic->colorspace = WEBP_YUV420;
  pic->use_argb = 1;
  if (!WebPPictureAlloc(pic)) return 0;
  dst = pic->argb;
  for (y = 0; y < pic->height; ++y) {
    const int width = pic->width;
    for (x = 0; x < width; ++x) {




      const uint32_t rg = rgb565[2 * x + 0];
      const uint32_t gb = rgb565[2 * x + 1];

      uint32_t r = rg & 0xf8;
      uint32_t g = ((rg << 5) | (gb >> 3)) & 0xfc;
      uint32_t b = (gb << 5);

      r = r | (r >> 5);
      g = g | (g >> 6);
      b = b | (b >> 5);
      dst[x] = (0xffu << 24) | (r << 16) | (g << 8) | b;
    }
    rgb565 += 2 * width;
    dst += pic->argb_stride;
  }
  return 1;
}
