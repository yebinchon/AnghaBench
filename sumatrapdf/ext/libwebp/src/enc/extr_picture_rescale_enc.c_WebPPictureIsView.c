
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * memory_; int * memory_argb_; scalar_t__ use_argb; } ;
typedef TYPE_1__ WebPPicture ;



int WebPPictureIsView(const WebPPicture* picture) {
  if (picture == ((void*)0)) return 0;
  if (picture->use_argb) {
    return (picture->memory_argb_ == ((void*)0));
  }
  return (picture->memory_ == ((void*)0));
}
