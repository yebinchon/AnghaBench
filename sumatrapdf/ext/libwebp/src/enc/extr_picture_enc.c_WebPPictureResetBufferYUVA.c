
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ a_stride; scalar_t__ uv_stride; scalar_t__ y_stride; int * a; int v; int u; int y; int * memory_; } ;
typedef TYPE_1__ WebPPicture ;



__attribute__((used)) static void WebPPictureResetBufferYUVA(WebPPicture* const picture) {
  picture->memory_ = ((void*)0);
  picture->y = picture->u = picture->v = picture->a = ((void*)0);
  picture->y_stride = picture->uv_stride = 0;
  picture->a_stride = 0;
}
