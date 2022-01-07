
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ max_value; scalar_t__ last_non_zero; } ;
typedef TYPE_1__ VP8Histogram ;



__attribute__((used)) static void MergeHistograms(const VP8Histogram* const in,
                            VP8Histogram* const out) {
  if (in->max_value > out->max_value) {
    out->max_value = in->max_value;
  }
  if (in->last_non_zero > out->last_non_zero) {
    out->last_non_zero = in->last_non_zero;
  }
}
