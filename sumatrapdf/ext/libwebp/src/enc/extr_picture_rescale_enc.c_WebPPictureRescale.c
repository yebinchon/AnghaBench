
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int rescaler_t ;
struct TYPE_9__ {int width; int height; int a_stride; int y_stride; int uv_stride; int argb_stride; scalar_t__ argb; int const* v; int const* u; int const* y; int const* a; int use_argb; } ;
typedef TYPE_1__ WebPPicture ;


 int AlphaMultiplyARGB (TYPE_1__*,int) ;
 int AlphaMultiplyY (TYPE_1__*,int) ;
 int HALVE (int) ;
 int PictureGrabSpecs (TYPE_1__*,TYPE_1__*) ;
 int RescalePlane (int const*,int,int,int,int const*,int,int,int,int *,int) ;
 int WebPInitAlphaProcessing () ;
 int WebPPictureAlloc (TYPE_1__*) ;
 int WebPPictureFree (TYPE_1__*) ;
 int WebPRescalerGetScaledDimensions (int,int,int*,int*) ;
 int WebPSafeFree (int *) ;
 scalar_t__ WebPSafeMalloc (unsigned long long,int) ;

int WebPPictureRescale(WebPPicture* pic, int width, int height) {
  WebPPicture tmp;
  int prev_width, prev_height;
  rescaler_t* work;

  if (pic == ((void*)0)) return 0;
  prev_width = pic->width;
  prev_height = pic->height;
  if (!WebPRescalerGetScaledDimensions(
          prev_width, prev_height, &width, &height)) {
    return 0;
  }

  PictureGrabSpecs(pic, &tmp);
  tmp.width = width;
  tmp.height = height;
  if (!WebPPictureAlloc(&tmp)) return 0;

  if (!pic->use_argb) {
    work = (rescaler_t*)WebPSafeMalloc(2ULL * width, sizeof(*work));
    if (work == ((void*)0)) {
      WebPPictureFree(&tmp);
      return 0;
    }

    if (pic->a != ((void*)0)) {
      WebPInitAlphaProcessing();
      RescalePlane(pic->a, prev_width, prev_height, pic->a_stride,
                   tmp.a, width, height, tmp.a_stride, work, 1);
    }



    AlphaMultiplyY(pic, 0);
    RescalePlane(pic->y, prev_width, prev_height, pic->y_stride,
                 tmp.y, width, height, tmp.y_stride, work, 1);
    AlphaMultiplyY(&tmp, 1);

    RescalePlane(pic->u,
                 HALVE(prev_width), HALVE(prev_height), pic->uv_stride,
                 tmp.u,
                 HALVE(width), HALVE(height), tmp.uv_stride, work, 1);
    RescalePlane(pic->v,
                 HALVE(prev_width), HALVE(prev_height), pic->uv_stride,
                 tmp.v,
                 HALVE(width), HALVE(height), tmp.uv_stride, work, 1);
  } else {
    work = (rescaler_t*)WebPSafeMalloc(2ULL * width * 4, sizeof(*work));
    if (work == ((void*)0)) {
      WebPPictureFree(&tmp);
      return 0;
    }



    WebPInitAlphaProcessing();
    AlphaMultiplyARGB(pic, 0);
    RescalePlane((const uint8_t*)pic->argb, prev_width, prev_height,
                 pic->argb_stride * 4,
                 (uint8_t*)tmp.argb, width, height,
                 tmp.argb_stride * 4,
                 work, 4);
    AlphaMultiplyARGB(&tmp, 1);
  }
  WebPPictureFree(pic);
  WebPSafeFree(work);
  *pic = tmp;
  return 1;
}
