
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lossless; int quality; int method; } ;
typedef TYPE_1__ WebPConfig ;
struct TYPE_5__ {int quality_; int method_; } ;


 int MAX_LEVEL ;
 TYPE_2__* kLosslessPresets ;

int WebPConfigLosslessPreset(WebPConfig* config, int level) {
  if (config == ((void*)0) || level < 0 || level > MAX_LEVEL) return 0;
  config->lossless = 1;
  config->method = kLosslessPresets[level].method_;
  config->quality = kLosslessPresets[level].quality_;
  return 1;
}
