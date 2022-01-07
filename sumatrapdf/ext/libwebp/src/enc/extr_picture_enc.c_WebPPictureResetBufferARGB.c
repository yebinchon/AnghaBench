
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ argb_stride; int * argb; int * memory_argb_; } ;
typedef TYPE_1__ WebPPicture ;



__attribute__((used)) static void WebPPictureResetBufferARGB(WebPPicture* const picture) {
  picture->memory_argb_ = ((void*)0);
  picture->argb = ((void*)0);
  picture->argb_stride = 0;
}
