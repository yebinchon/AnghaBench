
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int width; int height; int argb_stride; int * argb; int use_argb; } ;
typedef TYPE_1__ WebPPicture ;


 int ALPHA_OFFSET ;
 int ImportYUVAFromRGBA (int const*,int const*,int const*,int const*,int,int,float,int ,TYPE_1__* const) ;
 int VP8LConvertBGRAToRGBA (int const*,int const,int *) ;
 int VP8LDspInit () ;
 int WebPInitAlphaProcessing () ;
 int WebPPackARGB (int const*,int const*,int const*,int const*,int const,int *) ;
 int WebPPackRGB (int const*,int const*,int const*,int const,int,int *) ;
 int WebPPictureAlloc (TYPE_1__* const) ;
 int assert (int) ;
 int memcpy (int *,int const*,int const) ;

__attribute__((used)) static int Import(WebPPicture* const picture,
                  const uint8_t* rgb, int rgb_stride,
                  int step, int swap_rb, int import_alpha) {
  int y;

  const uint8_t* r_ptr = rgb + (swap_rb ? 2 : 0);
  const uint8_t* g_ptr = rgb + 1;
  const uint8_t* b_ptr = rgb + (swap_rb ? 0 : 2);
  const int width = picture->width;
  const int height = picture->height;

  if (!picture->use_argb) {
    const uint8_t* a_ptr = import_alpha ? rgb + 3 : ((void*)0);
    return ImportYUVAFromRGBA(r_ptr, g_ptr, b_ptr, a_ptr, step, rgb_stride,
                              0.f , 0, picture);
  }
  if (!WebPPictureAlloc(picture)) return 0;

  VP8LDspInit();
  WebPInitAlphaProcessing();

  if (import_alpha) {

    uint32_t* dst = picture->argb;
    const int do_copy = (ALPHA_OFFSET == 3) && swap_rb;
    assert(step == 4);
    if (do_copy) {
      for (y = 0; y < height; ++y) {
        memcpy(dst, rgb, width * 4);
        rgb += rgb_stride;
        dst += picture->argb_stride;
      }
    } else {
      for (y = 0; y < height; ++y) {
        VP8LConvertBGRAToRGBA((const uint32_t*)rgb, width, (uint8_t*)dst);

        rgb += rgb_stride;
        dst += picture->argb_stride;
      }
    }
  } else {
    uint32_t* dst = picture->argb;
    assert(step >= 3);
    for (y = 0; y < height; ++y) {
      WebPPackRGB(r_ptr, g_ptr, b_ptr, width, step, dst);
      r_ptr += rgb_stride;
      g_ptr += rgb_stride;
      b_ptr += rgb_stride;
      dst += picture->argb_stride;
    }
  }
  return 1;
}
