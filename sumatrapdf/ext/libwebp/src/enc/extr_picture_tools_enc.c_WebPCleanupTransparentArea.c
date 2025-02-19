
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int width; int height; int argb_stride; int y_stride; int uv_stride; int a_stride; int* y; int* u; int* v; int* a; int * argb; scalar_t__ use_argb; } ;
typedef TYPE_1__ WebPPicture ;


 int Flatten (int*,int,int const,int const) ;
 int FlattenARGB (int *,int ,int,int) ;
 scalar_t__ IsTransparentARGBArea (int *,int,int) ;
 int SIZE ;
 int const SIZE2 ;
 scalar_t__ SmoothenBlock (int const*,int const,int*,int const,int const,int const) ;

void WebPCleanupTransparentArea(WebPPicture* pic) {
  int x, y, w, h;
  if (pic == ((void*)0)) return;
  w = pic->width / SIZE;
  h = pic->height / SIZE;


  if (pic->use_argb) {
    uint32_t argb_value = 0;
    for (y = 0; y < h; ++y) {
      int need_reset = 1;
      for (x = 0; x < w; ++x) {
        const int off = (y * pic->argb_stride + x) * SIZE;
        if (IsTransparentARGBArea(pic->argb + off, pic->argb_stride, SIZE)) {
          if (need_reset) {
            argb_value = pic->argb[off];
            need_reset = 0;
          }
          FlattenARGB(pic->argb + off, argb_value, pic->argb_stride, SIZE);
        } else {
          need_reset = 1;
        }
      }
    }
  } else {
    const int width = pic->width;
    const int height = pic->height;
    const int y_stride = pic->y_stride;
    const int uv_stride = pic->uv_stride;
    const int a_stride = pic->a_stride;
    uint8_t* y_ptr = pic->y;
    uint8_t* u_ptr = pic->u;
    uint8_t* v_ptr = pic->v;
    const uint8_t* a_ptr = pic->a;
    int values[3] = { 0 };
    if (a_ptr == ((void*)0) || y_ptr == ((void*)0) || u_ptr == ((void*)0) || v_ptr == ((void*)0)) {
      return;
    }
    for (y = 0; y + SIZE <= height; y += SIZE) {
      int need_reset = 1;
      for (x = 0; x + SIZE <= width; x += SIZE) {
        if (SmoothenBlock(a_ptr + x, a_stride, y_ptr + x, y_stride,
                          SIZE, SIZE)) {
          if (need_reset) {
            values[0] = y_ptr[x];
            values[1] = u_ptr[x >> 1];
            values[2] = v_ptr[x >> 1];
            need_reset = 0;
          }
          Flatten(y_ptr + x, values[0], y_stride, SIZE);
          Flatten(u_ptr + (x >> 1), values[1], uv_stride, SIZE2);
          Flatten(v_ptr + (x >> 1), values[2], uv_stride, SIZE2);
        } else {
          need_reset = 1;
        }
      }
      if (x < width) {
        SmoothenBlock(a_ptr + x, a_stride, y_ptr + x, y_stride,
                      width - x, SIZE);
      }
      a_ptr += SIZE * a_stride;
      y_ptr += SIZE * y_stride;
      u_ptr += SIZE2 * uv_stride;
      v_ptr += SIZE2 * uv_stride;
    }
    if (y < height) {
      const int sub_height = height - y;
      for (x = 0; x + SIZE <= width; x += SIZE) {
        SmoothenBlock(a_ptr + x, a_stride, y_ptr + x, y_stride,
                      SIZE, sub_height);
      }
      if (x < width) {
        SmoothenBlock(a_ptr + x, a_stride, y_ptr + x, y_stride,
                      width - x, sub_height);
      }
    }
  }
}
