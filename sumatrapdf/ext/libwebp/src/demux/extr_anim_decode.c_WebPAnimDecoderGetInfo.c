
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WebPAnimInfo ;
struct TYPE_3__ {int info_; } ;
typedef TYPE_1__ WebPAnimDecoder ;



int WebPAnimDecoderGetInfo(const WebPAnimDecoder* dec, WebPAnimInfo* info) {
  if (dec == ((void*)0) || info == ((void*)0)) return 0;
  *info = dec->info_;
  return 1;
}
