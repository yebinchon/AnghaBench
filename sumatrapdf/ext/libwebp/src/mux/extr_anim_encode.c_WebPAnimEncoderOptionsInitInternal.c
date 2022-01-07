
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPAnimEncoderOptions ;


 int DefaultEncoderOptions (int *) ;
 scalar_t__ WEBP_ABI_IS_INCOMPATIBLE (int,int ) ;
 int WEBP_MUX_ABI_VERSION ;

int WebPAnimEncoderOptionsInitInternal(WebPAnimEncoderOptions* enc_options,
                                       int abi_version) {
  if (enc_options == ((void*)0) ||
      WEBP_ABI_IS_INCOMPATIBLE(abi_version, WEBP_MUX_ABI_VERSION)) {
    return 0;
  }
  DefaultEncoderOptions(enc_options);
  return 1;
}
