
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * raw_mem; int * frames; scalar_t__ num_frames; } ;
typedef TYPE_1__ AnimatedImage ;


 int WebPFree (int *) ;

void ClearAnimatedImage(AnimatedImage* const image) {
  if (image != ((void*)0)) {
    WebPFree(image->raw_mem);
    WebPFree(image->frames);
    image->num_frames = 0;
    image->frames = ((void*)0);
    image->raw_mem = ((void*)0);
  }
}
