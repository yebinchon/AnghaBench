
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPPicture ;


 int WebPPictureSharpARGBToYUVA (int *) ;

int WebPPictureSmartARGBToYUVA(WebPPicture* picture) {
  return WebPPictureSharpARGBToYUVA(picture);
}
