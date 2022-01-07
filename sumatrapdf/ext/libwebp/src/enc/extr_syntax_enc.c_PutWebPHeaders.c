
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int WebPPicture ;
typedef scalar_t__ WebPEncodingError ;
struct TYPE_7__ {int profile_; scalar_t__ has_alpha_; int * pic_; } ;
typedef TYPE_1__ VP8Encoder ;


 scalar_t__ IsVP8XNeeded (TYPE_1__ const* const) ;
 scalar_t__ PutAlphaChunk (TYPE_1__ const* const) ;
 scalar_t__ PutRIFFHeader (TYPE_1__ const* const,size_t) ;
 scalar_t__ PutVP8FrameHeader (int * const,int ,size_t) ;
 scalar_t__ PutVP8Header (int * const,size_t) ;
 scalar_t__ PutVP8XHeader (TYPE_1__ const* const) ;
 scalar_t__ VP8_ENC_OK ;
 int WebPEncodingSetError (int * const,scalar_t__) ;

__attribute__((used)) static int PutWebPHeaders(const VP8Encoder* const enc, size_t size0,
                          size_t vp8_size, size_t riff_size) {
  WebPPicture* const pic = enc->pic_;
  WebPEncodingError err = VP8_ENC_OK;


  err = PutRIFFHeader(enc, riff_size);
  if (err != VP8_ENC_OK) goto Error;


  if (IsVP8XNeeded(enc)) {
    err = PutVP8XHeader(enc);
    if (err != VP8_ENC_OK) goto Error;
  }


  if (enc->has_alpha_) {
    err = PutAlphaChunk(enc);
    if (err != VP8_ENC_OK) goto Error;
  }


  err = PutVP8Header(pic, vp8_size);
  if (err != VP8_ENC_OK) goto Error;


  err = PutVP8FrameHeader(pic, enc->profile_, size0);
  if (err != VP8_ENC_OK) goto Error;


  return 1;


 Error:
  return WebPEncodingSetError(pic, err);
}
