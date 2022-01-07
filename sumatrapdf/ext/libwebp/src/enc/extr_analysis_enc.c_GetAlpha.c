
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_value; int last_non_zero; } ;
typedef TYPE_1__ VP8Histogram ;


 int const ALPHA_SCALE ;

__attribute__((used)) static int GetAlpha(const VP8Histogram* const histo) {



  const int max_value = histo->max_value;
  const int last_non_zero = histo->last_non_zero;
  const int alpha =
      (max_value > 1) ? ALPHA_SCALE * last_non_zero / max_value : 0;
  return alpha;
}
