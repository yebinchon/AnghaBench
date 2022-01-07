
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int memory_argb_; int memory_; } ;
typedef TYPE_1__ WebPPicture ;


 int WebPPictureResetBuffers (TYPE_1__*) ;
 int WebPSafeFree (int ) ;

void WebPPictureFree(WebPPicture* picture) {
  if (picture != ((void*)0)) {
    WebPSafeFree(picture->memory_);
    WebPSafeFree(picture->memory_argb_);
    WebPPictureResetBuffers(picture);
  }
}
