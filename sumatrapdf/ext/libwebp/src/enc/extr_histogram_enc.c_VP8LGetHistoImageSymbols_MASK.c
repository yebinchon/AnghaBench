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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  map_tmp ;
typedef  int /*<<< orphan*/  VP8LHistogramSet ;
typedef  int /*<<< orphan*/  VP8LHistogram ;
typedef  int /*<<< orphan*/  VP8LBackwardRefs ;

/* Variables and functions */
 int BIN_SIZE ; 
 double FUNC0 (int const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/  const* const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int*,int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int const,double const,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ * const,int*,int const,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int*,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int MAX_HISTO_GREEDY ; 
 int NUM_PARTITIONS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int const,int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC10 (int const,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ * const) ; 
 int FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC14 (int,int) ; 

int FUNC15(int xsize, int ysize,
                             const VP8LBackwardRefs* const refs,
                             int quality, int low_effort,
                             int histo_bits, int cache_bits,
                             VP8LHistogramSet* const image_histo,
                             VP8LHistogram* const tmp_histo,
                             uint16_t* const histogram_symbols) {
  int ok = 0;
  const int histo_xsize = histo_bits ? FUNC12(xsize, histo_bits) : 1;
  const int histo_ysize = histo_bits ? FUNC12(ysize, histo_bits) : 1;
  const int image_histo_raw_size = histo_xsize * histo_ysize;
  VP8LHistogramSet* const orig_histo =
      FUNC10(image_histo_raw_size, cache_bits);
  // Don't attempt linear bin-partition heuristic for
  // histograms of small sizes (as bin_map will be very sparse) and
  // maximum quality q==100 (to preserve the compression gains at that level).
  const int entropy_combine_num_bins = low_effort ? NUM_PARTITIONS : BIN_SIZE;
  int entropy_combine;
  uint16_t* const map_tmp =
      FUNC14(2 * image_histo_raw_size, sizeof(map_tmp));
  uint16_t* const cluster_mappings = map_tmp + image_histo_raw_size;
  int num_used = image_histo_raw_size;
  if (orig_histo == NULL || map_tmp == NULL) goto Error;

  // Construct the histograms from backward references.
  FUNC2(xsize, histo_bits, refs, orig_histo);
  // Copies the histograms and computes its bit_cost.
  // histogram_symbols is optimized
  FUNC6(orig_histo, image_histo, &num_used,
                          histogram_symbols);

  entropy_combine =
      (num_used > entropy_combine_num_bins * 2) && (quality < 100);

  if (entropy_combine) {
    uint16_t* const bin_map = map_tmp;
    const double combine_cost_factor =
        FUNC0(image_histo_raw_size, quality);
    const uint32_t num_clusters = num_used;

    FUNC1(image_histo, bin_map, low_effort);
    // Collapse histograms with similar entropy.
    FUNC3(image_histo, &num_used, histogram_symbols,
                               cluster_mappings, tmp_histo, bin_map,
                               entropy_combine_num_bins, combine_cost_factor,
                               low_effort);
    FUNC8(image_histo, cluster_mappings, num_clusters,
                             map_tmp, histogram_symbols);
  }

  // Don't combine the histograms using stochastic and greedy heuristics for
  // low-effort compression mode.
  if (!low_effort || !entropy_combine) {
    const float x = quality / 100.f;
    // cubic ramp between 1 and MAX_HISTO_GREEDY:
    const int threshold_size = (int)(1 + (x * x * x) * (MAX_HISTO_GREEDY - 1));
    int do_greedy;
    if (!FUNC5(image_histo, &num_used, threshold_size,
                                    &do_greedy)) {
      goto Error;
    }
    if (do_greedy) {
      FUNC9(image_histo);
      if (!FUNC4(image_histo, &num_used)) {
        goto Error;
      }
    }
  }

  // Find the optimal map from original histograms to the final ones.
  FUNC9(image_histo);
  FUNC7(orig_histo, image_histo, histogram_symbols);

  ok = 1;

 Error:
  FUNC11(orig_histo);
  FUNC13(map_tmp);
  return ok;
}