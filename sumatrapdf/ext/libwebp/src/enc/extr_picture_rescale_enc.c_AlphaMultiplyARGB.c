
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int argb_stride; int height; int width; int * argb; } ;
typedef TYPE_1__ WebPPicture ;


 int WebPMultARGBRows (int *,int,int ,int ,int) ;
 int assert (int ) ;

__attribute__((used)) static void AlphaMultiplyARGB(WebPPicture* const pic, int inverse) {
  assert(pic->argb != ((void*)0));
  WebPMultARGBRows((uint8_t*)pic->argb, pic->argb_stride * sizeof(*pic->argb),
                   pic->width, pic->height, inverse);
}
