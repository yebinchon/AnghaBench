
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_27__ {scalar_t__ width; scalar_t__ height; int * argb; int * v; int * u; int * y; scalar_t__ use_argb; int * stats; } ;
typedef TYPE_1__ WebPPicture ;
struct TYPE_28__ {int preprocessing; float quality; int exact; scalar_t__ use_sharp_yuv; int lossless; } ;
typedef TYPE_2__ WebPConfig ;
struct TYPE_29__ {int use_tokens_; } ;
typedef TYPE_3__ VP8Encoder ;


 int DeleteVP8Encoder (TYPE_3__*) ;
 TYPE_3__* InitVP8Encoder (TYPE_2__ const*,TYPE_1__*) ;
 int StoreStats (TYPE_3__*) ;
 int VP8EncAnalyze (TYPE_3__*) ;
 scalar_t__ VP8EncFinishAlpha (TYPE_3__*) ;
 int VP8EncFreeBitWriters (TYPE_3__*) ;
 scalar_t__ VP8EncLoop (TYPE_3__*) ;
 scalar_t__ VP8EncStartAlpha (TYPE_3__*) ;
 scalar_t__ VP8EncTokenLoop (TYPE_3__*) ;
 scalar_t__ VP8EncWrite (TYPE_3__*) ;
 int VP8LEncodeImage (TYPE_2__ const*,TYPE_1__*) ;
 int VP8_ENC_ERROR_BAD_DIMENSION ;
 int VP8_ENC_ERROR_INVALID_CONFIGURATION ;
 int VP8_ENC_ERROR_NULL_PARAMETER ;
 int VP8_ENC_OK ;
 scalar_t__ WEBP_MAX_DIMENSION ;
 int WEBP_YUV420 ;
 int WebPCleanupTransparentArea (TYPE_1__*) ;
 int WebPCleanupTransparentAreaLossless (TYPE_1__*) ;
 int WebPEncodingSetError (TYPE_1__*,int ) ;
 int WebPPictureARGBToYUVADithered (TYPE_1__*,int ,float) ;
 int WebPPictureSharpARGBToYUVA (TYPE_1__*) ;
 int WebPPictureYUVAToARGB (TYPE_1__*) ;
 int WebPValidateConfig (TYPE_2__ const*) ;
 int memset (int *,int ,int) ;

int WebPEncode(const WebPConfig* config, WebPPicture* pic) {
  int ok = 0;
  if (pic == ((void*)0)) return 0;

  WebPEncodingSetError(pic, VP8_ENC_OK);
  if (config == ((void*)0)) {
    return WebPEncodingSetError(pic, VP8_ENC_ERROR_NULL_PARAMETER);
  }
  if (!WebPValidateConfig(config)) {
    return WebPEncodingSetError(pic, VP8_ENC_ERROR_INVALID_CONFIGURATION);
  }
  if (pic->width <= 0 || pic->height <= 0) {
    return WebPEncodingSetError(pic, VP8_ENC_ERROR_BAD_DIMENSION);
  }
  if (pic->width > WEBP_MAX_DIMENSION || pic->height > WEBP_MAX_DIMENSION) {
    return WebPEncodingSetError(pic, VP8_ENC_ERROR_BAD_DIMENSION);
  }

  if (pic->stats != ((void*)0)) memset(pic->stats, 0, sizeof(*pic->stats));

  if (!config->lossless) {
    VP8Encoder* enc = ((void*)0);

    if (pic->use_argb || pic->y == ((void*)0) || pic->u == ((void*)0) || pic->v == ((void*)0)) {

      if (config->use_sharp_yuv || (config->preprocessing & 4)) {
        if (!WebPPictureSharpARGBToYUVA(pic)) {
          return 0;
        }
      } else {
        float dithering = 0.f;
        if (config->preprocessing & 2) {
          const float x = config->quality / 100.f;
          const float x2 = x * x;


          dithering = 1.0f + (0.5f - 1.0f) * x2 * x2;
        }
        if (!WebPPictureARGBToYUVADithered(pic, WEBP_YUV420, dithering)) {
          return 0;
        }
      }
    }

    if (!config->exact) {
      WebPCleanupTransparentArea(pic);
    }

    enc = InitVP8Encoder(config, pic);
    if (enc == ((void*)0)) return 0;

    ok = VP8EncAnalyze(enc);


    ok = ok && VP8EncStartAlpha(enc);
    if (!enc->use_tokens_) {
      ok = ok && VP8EncLoop(enc);
    } else {
      ok = ok && VP8EncTokenLoop(enc);
    }
    ok = ok && VP8EncFinishAlpha(enc);

    ok = ok && VP8EncWrite(enc);
    StoreStats(enc);
    if (!ok) {
      VP8EncFreeBitWriters(enc);
    }
    ok &= DeleteVP8Encoder(enc);
  } else {

    if (pic->argb == ((void*)0) && !WebPPictureYUVAToARGB(pic)) {
      return 0;
    }

    if (!config->exact) {
      WebPCleanupTransparentAreaLossless(pic);
    }

    ok = VP8LEncodeImage(config, pic);
  }

  return ok;
}
