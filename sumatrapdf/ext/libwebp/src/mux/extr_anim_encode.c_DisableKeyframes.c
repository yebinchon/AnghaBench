
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kmax; scalar_t__ kmin; } ;
typedef TYPE_1__ WebPAnimEncoderOptions ;


 scalar_t__ INT_MAX ;

__attribute__((used)) static void DisableKeyframes(WebPAnimEncoderOptions* const enc_options) {
  enc_options->kmax = INT_MAX;
  enc_options->kmin = enc_options->kmax - 1;
}
