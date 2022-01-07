
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int writer; } ;
typedef TYPE_1__ WebPPicture ;


 int DummyWriter ;
 int VP8_ENC_OK ;
 scalar_t__ WEBP_ABI_IS_INCOMPATIBLE (int,int ) ;
 int WEBP_ENCODER_ABI_VERSION ;
 int WebPEncodingSetError (TYPE_1__*,int ) ;
 int memset (TYPE_1__*,int ,int) ;

int WebPPictureInitInternal(WebPPicture* picture, int version) {
  if (WEBP_ABI_IS_INCOMPATIBLE(version, WEBP_ENCODER_ABI_VERSION)) {
    return 0;
  }
  if (picture != ((void*)0)) {
    memset(picture, 0, sizeof(*picture));
    picture->writer = DummyWriter;
    WebPEncodingSetError(picture, VP8_ENC_OK);
  }
  return 1;
}
