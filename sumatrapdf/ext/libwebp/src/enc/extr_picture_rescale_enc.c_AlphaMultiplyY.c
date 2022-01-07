
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; int a_stride; int * a; int y_stride; int y; } ;
typedef TYPE_1__ WebPPicture ;


 int WebPMultRows (int ,int ,int *,int ,int ,int ,int) ;

__attribute__((used)) static void AlphaMultiplyY(WebPPicture* const pic, int inverse) {
  if (pic->a != ((void*)0)) {
    WebPMultRows(pic->y, pic->y_stride, pic->a, pic->a_stride,
                 pic->width, pic->height, inverse);
  }
}
