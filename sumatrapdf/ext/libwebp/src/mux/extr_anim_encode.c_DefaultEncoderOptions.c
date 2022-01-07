
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bgcolor; scalar_t__ loop_count; } ;
struct TYPE_6__ {scalar_t__ verbose; scalar_t__ allow_mixed; scalar_t__ minimize_size; TYPE_1__ anim_params; } ;
typedef TYPE_2__ WebPAnimEncoderOptions ;


 int DisableKeyframes (TYPE_2__* const) ;

__attribute__((used)) static void DefaultEncoderOptions(WebPAnimEncoderOptions* const enc_options) {
  enc_options->anim_params.loop_count = 0;
  enc_options->anim_params.bgcolor = 0xffffffff;
  enc_options->minimize_size = 0;
  DisableKeyframes(enc_options);
  enc_options->allow_mixed = 0;
  enc_options->verbose = 0;
}
