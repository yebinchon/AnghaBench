
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int WebPIDecoder ;
typedef int WebPDecoderConfig ;
typedef int VP8StatusCode ;


 int PrintAnimationWarning (int * const) ;
 int VP8_STATUS_INVALID_PARAM ;
 int VP8_STATUS_OK ;
 int VP8_STATUS_OUT_OF_MEMORY ;
 int * WebPIDecode (int const* const,size_t,int * const) ;
 int WebPIDelete (int * const) ;
 int WebPIUpdate (int * const,int const* const,size_t) ;
 int fprintf (int ,char*) ;
 int stderr ;

VP8StatusCode DecodeWebPIncremental(
    const uint8_t* const data, size_t data_size,
    WebPDecoderConfig* const config) {
  VP8StatusCode status = VP8_STATUS_OK;
  if (config == ((void*)0)) return VP8_STATUS_INVALID_PARAM;

  PrintAnimationWarning(config);


  {
    WebPIDecoder* const idec = WebPIDecode(data, data_size, config);
    if (idec == ((void*)0)) {
      fprintf(stderr, "Failed during WebPINewDecoder().\n");
      return VP8_STATUS_OUT_OF_MEMORY;
    } else {
      status = WebPIUpdate(idec, data, data_size);
      WebPIDelete(idec);
    }
  }
  return status;
}
