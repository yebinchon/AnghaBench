
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int width; int use_argb; int height; int argb_stride; int * argb; } ;
typedef TYPE_1__ WebPPicture ;


 int MAX_PALETTE_SIZE ;
 int WebPPictureAlloc (TYPE_1__*) ;
 int WebPPictureFree (TYPE_1__*) ;
 int assert (int) ;

int WebPImportColorMappedARGB(const uint8_t* indexed, int indexed_stride,
                              const uint32_t palette[], int palette_size,
                              WebPPicture* pic) {
  int x, y;
  uint32_t* dst;

  assert(MAX_PALETTE_SIZE <= 256);
  if (pic == ((void*)0) || indexed == ((void*)0) || indexed_stride < pic->width ||
      palette == ((void*)0) || palette_size > MAX_PALETTE_SIZE || palette_size <= 0) {
    return 0;
  }
  pic->use_argb = 1;
  if (!WebPPictureAlloc(pic)) return 0;
  dst = pic->argb;
  for (y = 0; y < pic->height; ++y) {
    for (x = 0; x < pic->width; ++x) {

      if (indexed[x] >= palette_size) {
        WebPPictureFree(pic);
        return 0;
      }
      dst[x] = palette[indexed[x]];
    }
    indexed += indexed_stride;
    dst += pic->argb_stride;
  }
  return 1;
}
