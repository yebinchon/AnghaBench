
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keyframe_; int best_delta_; scalar_t__ flush_count_; scalar_t__ count_; scalar_t__ start_; } ;
typedef TYPE_1__ WebPAnimEncoder ;


 int DELTA_INFINITY ;
 int KEYFRAME_NONE ;

__attribute__((used)) static void ResetCounters(WebPAnimEncoder* const enc) {
  enc->start_ = 0;
  enc->count_ = 0;
  enc->flush_count_ = 0;
  enc->best_delta_ = DELTA_INFINITY;
  enc->keyframe_ = KEYFRAME_NONE;
}
