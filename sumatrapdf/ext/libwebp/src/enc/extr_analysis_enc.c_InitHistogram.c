
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_non_zero; scalar_t__ max_value; } ;
typedef TYPE_1__ VP8Histogram ;



__attribute__((used)) static void InitHistogram(VP8Histogram* const histo) {
  histo->max_value = 0;
  histo->last_non_zero = 1;
}
