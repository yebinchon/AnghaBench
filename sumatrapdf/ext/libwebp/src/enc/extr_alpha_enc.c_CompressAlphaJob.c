
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_4__ {int method; int alpha_filtering; int alpha_compression; int alpha_quality; } ;
typedef TYPE_1__ WebPConfig ;
typedef int WEBP_FILTER_TYPE ;
struct TYPE_5__ {size_t alpha_data_size_; int * alpha_data_; TYPE_1__* config_; } ;
typedef TYPE_2__ VP8Encoder ;


 int EncodeAlpha (TYPE_2__* const,int ,int ,int const,int const,int **,size_t*) ;
 int WEBP_FILTER_BEST ;
 int WEBP_FILTER_FAST ;
 int WEBP_FILTER_NONE ;
 int WebPSafeFree (int *) ;

__attribute__((used)) static int CompressAlphaJob(void* arg1, void* dummy) {
  VP8Encoder* const enc = (VP8Encoder*)arg1;
  const WebPConfig* config = enc->config_;
  uint8_t* alpha_data = ((void*)0);
  size_t alpha_size = 0;
  const int effort_level = config->method;
  const WEBP_FILTER_TYPE filter =
      (config->alpha_filtering == 0) ? WEBP_FILTER_NONE :
      (config->alpha_filtering == 1) ? WEBP_FILTER_FAST :
                                       WEBP_FILTER_BEST;
  if (!EncodeAlpha(enc, config->alpha_quality, config->alpha_compression,
                   filter, effort_level, &alpha_data, &alpha_size)) {
    return 0;
  }
  if (alpha_size != (uint32_t)alpha_size) {
    WebPSafeFree(alpha_data);
    return 0;
  }
  enc->alpha_data_size_ = (uint32_t)alpha_size;
  enc->alpha_data_ = alpha_data;
  (void)dummy;
  return 1;
}
