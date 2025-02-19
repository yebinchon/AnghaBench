
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_8__ {int width; int height; int y_stride; int uv_stride; int a_stride; int argb_stride; scalar_t__ argb; int const* a; int const* v; int const* u; int const* y; int use_argb; } ;
typedef TYPE_1__ WebPPicture ;


 int AdjustAndCheckRectangle (TYPE_1__*,int*,int*,int,int) ;
 int HALVE (int) ;
 int PictureGrabSpecs (TYPE_1__*,TYPE_1__*) ;
 int WebPCopyPlane (int const* const,int,int const*,int,int,int) ;
 int WebPPictureAlloc (TYPE_1__*) ;
 int WebPPictureFree (TYPE_1__*) ;

int WebPPictureCrop(WebPPicture* pic,
                    int left, int top, int width, int height) {
  WebPPicture tmp;

  if (pic == ((void*)0)) return 0;
  if (!AdjustAndCheckRectangle(pic, &left, &top, width, height)) return 0;

  PictureGrabSpecs(pic, &tmp);
  tmp.width = width;
  tmp.height = height;
  if (!WebPPictureAlloc(&tmp)) return 0;

  if (!pic->use_argb) {
    const int y_offset = top * pic->y_stride + left;
    const int uv_offset = (top / 2) * pic->uv_stride + left / 2;
    WebPCopyPlane(pic->y + y_offset, pic->y_stride,
                  tmp.y, tmp.y_stride, width, height);
    WebPCopyPlane(pic->u + uv_offset, pic->uv_stride,
                  tmp.u, tmp.uv_stride, HALVE(width), HALVE(height));
    WebPCopyPlane(pic->v + uv_offset, pic->uv_stride,
                  tmp.v, tmp.uv_stride, HALVE(width), HALVE(height));

    if (tmp.a != ((void*)0)) {
      const int a_offset = top * pic->a_stride + left;
      WebPCopyPlane(pic->a + a_offset, pic->a_stride,
                    tmp.a, tmp.a_stride, width, height);
    }
  } else {
    const uint8_t* const src =
        (const uint8_t*)(pic->argb + top * pic->argb_stride + left);
    WebPCopyPlane(src, pic->argb_stride * 4, (uint8_t*)tmp.argb,
                  tmp.argb_stride * 4, width * 4, height);
  }
  WebPPictureFree(pic);
  *pic = tmp;
  return 1;
}
