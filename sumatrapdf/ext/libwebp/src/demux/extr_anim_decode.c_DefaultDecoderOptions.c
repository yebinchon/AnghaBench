
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ use_threads; int color_mode; } ;
typedef TYPE_1__ WebPAnimDecoderOptions ;


 int MODE_RGBA ;

__attribute__((used)) static void DefaultDecoderOptions(WebPAnimDecoderOptions* const dec_options) {
  dec_options->color_mode = MODE_RGBA;
  dec_options->use_threads = 0;
}
