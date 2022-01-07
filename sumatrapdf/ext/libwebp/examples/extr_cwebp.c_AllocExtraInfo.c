
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int width; int height; int * extra_info; } ;
typedef TYPE_1__ WebPPicture ;


 scalar_t__ WebPMalloc (int const) ;

__attribute__((used)) static void AllocExtraInfo(WebPPicture* const pic) {
  const int mb_w = (pic->width + 15) / 16;
  const int mb_h = (pic->height + 15) / 16;
  pic->extra_info =
      (uint8_t*)WebPMalloc(mb_w * mb_h * sizeof(*pic->extra_info));
}
