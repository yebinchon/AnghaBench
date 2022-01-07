
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int WebPPicture ;


 int Import (int *,int const*,int,int,int ,int ) ;

int WebPPictureImportRGB(WebPPicture* picture,
                         const uint8_t* rgb, int rgb_stride) {
  return (picture != ((void*)0) && rgb != ((void*)0))
             ? Import(picture, rgb, rgb_stride, 3, 0, 0)
             : 0;
}
