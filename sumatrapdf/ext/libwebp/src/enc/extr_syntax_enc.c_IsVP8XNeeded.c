
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_alpha_; } ;
typedef TYPE_1__ VP8Encoder ;



__attribute__((used)) static int IsVP8XNeeded(const VP8Encoder* const enc) {
  return !!enc->has_alpha_;

}
