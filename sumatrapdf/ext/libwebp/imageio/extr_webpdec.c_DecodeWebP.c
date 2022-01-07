
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int WebPDecoderConfig ;
typedef int VP8StatusCode ;


 int PrintAnimationWarning (int * const) ;
 int VP8_STATUS_INVALID_PARAM ;
 int WebPDecode (int const* const,size_t,int * const) ;

VP8StatusCode DecodeWebP(const uint8_t* const data, size_t data_size,
                         WebPDecoderConfig* const config) {
  if (config == ((void*)0)) return VP8_STATUS_INVALID_PARAM;
  PrintAnimationWarning(config);
  return WebPDecode(data, data_size, config);
}
