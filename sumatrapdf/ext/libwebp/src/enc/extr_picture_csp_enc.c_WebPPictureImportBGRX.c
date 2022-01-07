
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int WebPPicture ;


 int Import (int *,int const*,int,int,int,int ) ;

int WebPPictureImportBGRX(WebPPicture* picture,
                          const uint8_t* rgba, int rgba_stride) {
  return (picture != ((void*)0) && rgba != ((void*)0))
             ? Import(picture, rgba, rgba_stride, 4, 1, 0)
             : 0;
}
