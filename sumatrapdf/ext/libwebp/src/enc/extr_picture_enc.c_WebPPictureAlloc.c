
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int width; int height; int use_argb; } ;
typedef TYPE_1__ WebPPicture ;


 int WebPPictureAllocARGB (TYPE_1__*,int const,int const) ;
 int WebPPictureAllocYUVA (TYPE_1__*,int const,int const) ;
 int WebPPictureFree (TYPE_1__*) ;

int WebPPictureAlloc(WebPPicture* picture) {
  if (picture != ((void*)0)) {
    const int width = picture->width;
    const int height = picture->height;

    WebPPictureFree(picture);

    if (!picture->use_argb) {
      return WebPPictureAllocYUVA(picture, width, height);
    } else {
      return WebPPictureAllocARGB(picture, width, height);
    }
  }
  return 1;
}
