
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int output; int input; } ;
typedef TYPE_1__ WebPDecoderConfig ;


 int DefaultFeatures (int *) ;
 scalar_t__ WEBP_ABI_IS_INCOMPATIBLE (int,int ) ;
 int WEBP_DECODER_ABI_VERSION ;
 int WebPInitDecBuffer (int *) ;
 int memset (TYPE_1__*,int ,int) ;

int WebPInitDecoderConfigInternal(WebPDecoderConfig* config,
                                  int version) {
  if (WEBP_ABI_IS_INCOMPATIBLE(version, WEBP_DECODER_ABI_VERSION)) {
    return 0;
  }
  if (config == ((void*)0)) {
    return 0;
  }
  memset(config, 0, sizeof(*config));
  DefaultFeatures(&config->input);
  WebPInitDecBuffer(&config->output);
  return 1;
}
