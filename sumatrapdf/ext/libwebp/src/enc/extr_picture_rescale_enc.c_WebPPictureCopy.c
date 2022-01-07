
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_7__ {int y_stride; int width; int height; int uv_stride; int a_stride; int argb_stride; scalar_t__ argb; int const* a; int const* v; int const* u; int const* y; int use_argb; } ;
typedef TYPE_1__ const WebPPicture ;


 int HALVE (int) ;
 int PictureGrabSpecs (TYPE_1__ const*,TYPE_1__ const*) ;
 int WebPCopyPlane (int const*,int,int const*,int,int,int) ;
 int WebPPictureAlloc (TYPE_1__ const*) ;

int WebPPictureCopy(const WebPPicture* src, WebPPicture* dst) {
  if (src == ((void*)0) || dst == ((void*)0)) return 0;
  if (src == dst) return 1;

  PictureGrabSpecs(src, dst);
  if (!WebPPictureAlloc(dst)) return 0;

  if (!src->use_argb) {
    WebPCopyPlane(src->y, src->y_stride,
                  dst->y, dst->y_stride, dst->width, dst->height);
    WebPCopyPlane(src->u, src->uv_stride, dst->u, dst->uv_stride,
                  HALVE(dst->width), HALVE(dst->height));
    WebPCopyPlane(src->v, src->uv_stride, dst->v, dst->uv_stride,
                  HALVE(dst->width), HALVE(dst->height));
    if (dst->a != ((void*)0)) {
      WebPCopyPlane(src->a, src->a_stride,
                    dst->a, dst->a_stride, dst->width, dst->height);
    }
  } else {
    WebPCopyPlane((const uint8_t*)src->argb, 4 * src->argb_stride,
                  (uint8_t*)dst->argb, 4 * dst->argb_stride,
                  4 * dst->width, dst->height);
  }
  return 1;
}
