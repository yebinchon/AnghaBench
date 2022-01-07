
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int width; int height; int* argb; int argb_stride; scalar_t__ use_argb; } ;
typedef TYPE_1__ WebPPicture ;


 int assert (int) ;

void WebPCleanupTransparentAreaLossless(WebPPicture* const pic) {
  int x, y, w, h;
  uint32_t* argb;
  assert(pic != ((void*)0) && pic->use_argb);
  w = pic->width;
  h = pic->height;
  argb = pic->argb;

  for (y = 0; y < h; ++y) {
    for (x = 0; x < w; ++x) {
      if ((argb[x] & 0xff000000) == 0) {
        argb[x] = 0x00000000;
      }
    }
    argb += pic->argb_stride;
  }
}
