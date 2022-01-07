
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPAnimDecoderOptions ;


 int DefaultDecoderOptions (int *) ;
 scalar_t__ WEBP_ABI_IS_INCOMPATIBLE (int,int ) ;
 int WEBP_DEMUX_ABI_VERSION ;

int WebPAnimDecoderOptionsInitInternal(WebPAnimDecoderOptions* dec_options,
                                       int abi_version) {
  if (dec_options == ((void*)0) ||
      WEBP_ABI_IS_INCOMPATIBLE(abi_version, WEBP_DEMUX_ABI_VERSION)) {
    return 0;
  }
  DefaultDecoderOptions(dec_options);
  return 1;
}
