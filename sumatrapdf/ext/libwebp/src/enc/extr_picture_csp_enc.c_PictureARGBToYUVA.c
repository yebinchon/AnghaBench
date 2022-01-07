
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int colorspace; int argb_stride; int * argb; } ;
typedef TYPE_1__ WebPPicture ;
typedef int WebPEncCSP ;


 int CHANNEL_OFFSET (int) ;
 int ImportYUVAFromRGBA (int const* const,int const* const,int const* const,int const* const,int,int,float,int,TYPE_1__*) ;
 int VP8_ENC_ERROR_INVALID_CONFIGURATION ;
 int VP8_ENC_ERROR_NULL_PARAMETER ;
 int WEBP_CSP_UV_MASK ;
 int WEBP_YUV420 ;
 int WebPEncodingSetError (TYPE_1__*,int ) ;

__attribute__((used)) static int PictureARGBToYUVA(WebPPicture* picture, WebPEncCSP colorspace,
                             float dithering, int use_iterative_conversion) {
  if (picture == ((void*)0)) return 0;
  if (picture->argb == ((void*)0)) {
    return WebPEncodingSetError(picture, VP8_ENC_ERROR_NULL_PARAMETER);
  } else if ((colorspace & WEBP_CSP_UV_MASK) != WEBP_YUV420) {
    return WebPEncodingSetError(picture, VP8_ENC_ERROR_INVALID_CONFIGURATION);
  } else {
    const uint8_t* const argb = (const uint8_t*)picture->argb;
    const uint8_t* const a = argb + CHANNEL_OFFSET(0);
    const uint8_t* const r = argb + CHANNEL_OFFSET(1);
    const uint8_t* const g = argb + CHANNEL_OFFSET(2);
    const uint8_t* const b = argb + CHANNEL_OFFSET(3);

    picture->colorspace = WEBP_YUV420;
    return ImportYUVAFromRGBA(r, g, b, a, 4, 4 * picture->argb_stride,
                              dithering, use_iterative_conversion, picture);
  }
}
