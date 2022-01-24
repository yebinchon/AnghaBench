#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int max_size; int size; int /*<<< orphan*/ ** histograms; } ;
typedef  TYPE_1__ VP8LHistogramSet ;
typedef  int /*<<< orphan*/  VP8LHistogram ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double) ; 
 double MAX_COST ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(const VP8LHistogramSet* const in,
                           VP8LHistogramSet* const out,
                           uint16_t* const symbols) {
  int i;
  VP8LHistogram** const in_histo = in->histograms;
  VP8LHistogram** const out_histo = out->histograms;
  const int in_size = out->max_size;
  const int out_size = out->size;
  if (out_size > 1) {
    for (i = 0; i < in_size; ++i) {
      int best_out = 0;
      double best_bits = MAX_COST;
      int k;
      if (in_histo[i] == NULL) {
        // Arbitrarily set to the previous value if unused to help future LZ77.
        symbols[i] = symbols[i - 1];
        continue;
      }
      for (k = 0; k < out_size; ++k) {
        double cur_bits;
        cur_bits = FUNC1(out_histo[k], in_histo[i], best_bits);
        if (k == 0 || cur_bits < best_bits) {
          best_bits = cur_bits;
          best_out = k;
        }
      }
      symbols[i] = best_out;
    }
  } else {
    FUNC3(out_size == 1);
    for (i = 0; i < in_size; ++i) {
      symbols[i] = 0;
    }
  }

  // Recompute each out based on raw and symbols.
  FUNC2(out);
  out->size = out_size;

  for (i = 0; i < in_size; ++i) {
    int idx;
    if (in_histo[i] == NULL) continue;
    idx = symbols[i];
    FUNC0(in_histo[i], out_histo[idx], out_histo[idx]);
  }
}