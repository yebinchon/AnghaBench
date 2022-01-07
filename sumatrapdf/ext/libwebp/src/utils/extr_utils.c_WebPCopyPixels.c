
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int width; scalar_t__ height; int argb_stride; scalar_t__ argb; scalar_t__ use_argb; } ;
typedef TYPE_1__ WebPPicture ;


 int WebPCopyPlane (int *,int,int *,int,int,scalar_t__) ;
 int assert (int) ;

void WebPCopyPixels(const WebPPicture* const src, WebPPicture* const dst) {
  assert(src != ((void*)0) && dst != ((void*)0));
  assert(src->width == dst->width && src->height == dst->height);
  assert(src->use_argb && dst->use_argb);
  WebPCopyPlane((uint8_t*)src->argb, 4 * src->argb_stride, (uint8_t*)dst->argb,
                4 * dst->argb_stride, 4 * src->width, src->height);
}
