
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

int WebPImportRGB4444(const uint8_t* rgb4444, WebPPicture* pic) {
  int x, y;
  uint32_t* dst;
  if (pic == ((void*)0) || rgb4444 == ((void*)0)) return 0;
  pic->colorspace = WEBP_YUV420;
  pic->use_argb = 1;
  if (!WebPPictureAlloc(pic)) return 0;
  dst = pic->argb;
  for (y = 0; y < pic->height; ++y) {
    const int width = pic->width;
    for (x = 0; x < width; ++x) {




      const uint32_t rg = rgb4444[2 * x + 0];
      const uint32_t ba = rgb4444[2 * x + 1];

      uint32_t r = rg & 0xf0;
      uint32_t g = (rg << 4);
      uint32_t b = (ba & 0xf0);
      uint32_t a = (ba << 4);

      r = r | (r >> 4);
      g = g | (g >> 4);
      b = b | (b >> 4);
      a = a | (a >> 4);
      dst[x] = (a << 24) | (r << 16) | (g << 8) | b;
    }
    rgb4444 += 2 * width;
    dst += pic->argb_stride;
  }
  return 1;
}
