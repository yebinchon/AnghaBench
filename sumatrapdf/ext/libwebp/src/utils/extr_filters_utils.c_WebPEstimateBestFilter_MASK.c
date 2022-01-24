#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  bins ;
typedef  size_t WEBP_FILTER_TYPE ;

/* Variables and functions */
 int FUNC0 (int const,int const,int const) ; 
 int FUNC1 (int const,int const) ; 
 int SMAX ; 
 size_t WEBP_FILTER_GRADIENT ; 
 size_t WEBP_FILTER_HORIZONTAL ; 
 int WEBP_FILTER_LAST ; 
 size_t WEBP_FILTER_NONE ; 
 size_t WEBP_FILTER_VERTICAL ; 
 int /*<<< orphan*/  FUNC2 (int**,int /*<<< orphan*/ ,int) ; 

WEBP_FILTER_TYPE FUNC3(const uint8_t* data,
                                        int width, int height, int stride) {
  int i, j;
  int bins[WEBP_FILTER_LAST][SMAX];
  FUNC2(bins, 0, sizeof(bins));

  // We only sample every other pixels. That's enough.
  for (j = 2; j < height - 1; j += 2) {
    const uint8_t* const p = data + j * stride;
    int mean = p[0];
    for (i = 2; i < width - 1; i += 2) {
      const int diff0 = FUNC1(p[i], mean);
      const int diff1 = FUNC1(p[i], p[i - 1]);
      const int diff2 = FUNC1(p[i], p[i - width]);
      const int grad_pred =
          FUNC0(p[i - 1], p[i - width], p[i - width - 1]);
      const int diff3 = FUNC1(p[i], grad_pred);
      bins[WEBP_FILTER_NONE][diff0] = 1;
      bins[WEBP_FILTER_HORIZONTAL][diff1] = 1;
      bins[WEBP_FILTER_VERTICAL][diff2] = 1;
      bins[WEBP_FILTER_GRADIENT][diff3] = 1;
      mean = (3 * mean + p[i] + 2) >> 2;
    }
  }
  {
    int filter;
    WEBP_FILTER_TYPE best_filter = WEBP_FILTER_NONE;
    int best_score = 0x7fffffff;
    for (filter = WEBP_FILTER_NONE; filter < WEBP_FILTER_LAST; ++filter) {
      int score = 0;
      for (i = 0; i < SMAX; ++i) {
        if (bins[filter][i] > 0) {
          score += i;
        }
      }
      if (score < best_score) {
        best_score = score;
        best_filter = (WEBP_FILTER_TYPE)filter;
      }
    }
    return best_filter;
  }
}