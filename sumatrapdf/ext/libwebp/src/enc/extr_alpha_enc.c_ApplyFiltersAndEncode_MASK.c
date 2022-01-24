#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  lossless_data_size; int /*<<< orphan*/  lossless_hdr_size; int /*<<< orphan*/  lossless_size; int /*<<< orphan*/  palette_size; int /*<<< orphan*/  cache_bits; int /*<<< orphan*/  transform_bits; int /*<<< orphan*/  histogram_bits; int /*<<< orphan*/  lossless_features; } ;
typedef  TYPE_2__ WebPAuxStats ;
struct TYPE_7__ {int /*<<< orphan*/  lossless_data_size; int /*<<< orphan*/  lossless_hdr_size; int /*<<< orphan*/  lossless_size; int /*<<< orphan*/  palette_size; int /*<<< orphan*/  cache_bits; int /*<<< orphan*/  transform_bits; int /*<<< orphan*/  histogram_bits; int /*<<< orphan*/  lossless_features; } ;
struct TYPE_9__ {scalar_t__ score; int /*<<< orphan*/  bw; TYPE_1__ stats; } ;
typedef  TYPE_3__ FilterTrial ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int,int,int,int,int,int,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FILTER_TRY_NONE ; 
 int FUNC1 (int /*<<< orphan*/  const*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int WEBP_FILTER_NONE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (unsigned long long,size_t) ; 

__attribute__((used)) static int FUNC8(const uint8_t* alpha, int width, int height,
                                 size_t data_size, int method, int filter,
                                 int reduce_levels, int effort_level,
                                 uint8_t** const output,
                                 size_t* const output_size,
                                 WebPAuxStats* const stats) {
  int ok = 1;
  FilterTrial best;
  uint32_t try_map =
      FUNC1(alpha, width, height, filter, effort_level);
  FUNC2(&best);

  if (try_map != FILTER_TRY_NONE) {
    uint8_t* filtered_alpha =  (uint8_t*)FUNC7(1ULL, data_size);
    if (filtered_alpha == NULL) return 0;

    for (filter = WEBP_FILTER_NONE; ok && try_map; ++filter, try_map >>= 1) {
      if (try_map & 1) {
        FilterTrial trial;
        ok = FUNC0(alpha, width, height, method, filter,
                                 reduce_levels, effort_level, filtered_alpha,
                                 &trial);
        if (ok && trial.score < best.score) {
          FUNC5(&best.bw);
          best = trial;
        } else {
          FUNC5(&trial.bw);
        }
      }
    }
    FUNC6(filtered_alpha);
  } else {
    ok = FUNC0(alpha, width, height, method, WEBP_FILTER_NONE,
                             reduce_levels, effort_level, NULL, &best);
  }
  if (ok) {
#if !defined(WEBP_DISABLE_STATS)
    if (stats != NULL) {
      stats->lossless_features = best.stats.lossless_features;
      stats->histogram_bits = best.stats.histogram_bits;
      stats->transform_bits = best.stats.transform_bits;
      stats->cache_bits = best.stats.cache_bits;
      stats->palette_size = best.stats.palette_size;
      stats->lossless_size = best.stats.lossless_size;
      stats->lossless_hdr_size = best.stats.lossless_hdr_size;
      stats->lossless_data_size = best.stats.lossless_data_size;
    }
#else
    (void)stats;
#endif
    *output_size = FUNC4(&best.bw);
    *output = FUNC3(&best.bw);
  } else {
    FUNC5(&best.bw);
  }
  return ok;
}