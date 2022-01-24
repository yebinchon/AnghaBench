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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  hash_chain_box ;
typedef  int /*<<< orphan*/  VP8LHistogram ;
typedef  int /*<<< orphan*/  const VP8LHashChain ;
typedef  int /*<<< orphan*/  VP8LBackwardRefs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int,int /*<<< orphan*/  const* const,int /*<<< orphan*/ ,int /*<<< orphan*/  const* const,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int,int /*<<< orphan*/  const* const,int /*<<< orphan*/ ,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int,int /*<<< orphan*/  const* const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const* const,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const* const,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  MAX_COLOR_CACHE_BITS ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int,int /*<<< orphan*/  const* const,int,int /*<<< orphan*/  const* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 double FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
#define  kLZ77Box 130 
#define  kLZ77RLE 129 
#define  kLZ77Standard 128 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static VP8LBackwardRefs* FUNC15(
    int width, int height, const uint32_t* const argb, int quality,
    int lz77_types_to_try, int* const cache_bits,
    const VP8LHashChain* const hash_chain, VP8LBackwardRefs* best,
    VP8LBackwardRefs* worst) {
  const int cache_bits_initial = *cache_bits;
  double bit_cost_best = -1;
  VP8LHistogram* histo = NULL;
  int lz77_type, lz77_type_best = 0;
  VP8LHashChain hash_chain_box;
  FUNC14(&hash_chain_box, 0, sizeof(hash_chain_box));

  histo = FUNC6(MAX_COLOR_CACHE_BITS);
  if (histo == NULL) goto Error;

  for (lz77_type = 1; lz77_types_to_try;
       lz77_types_to_try &= ~lz77_type, lz77_type <<= 1) {
    int res = 0;
    double bit_cost;
    int cache_bits_tmp = cache_bits_initial;
    if ((lz77_types_to_try & lz77_type) == 0) continue;
    switch (lz77_type) {
      case kLZ77RLE:
        res = FUNC3(width, height, argb, 0, worst);
        break;
      case kLZ77Standard:
        // Compute LZ77 with no cache (0 bits), as the ideal LZ77 with a color
        // cache is not that different in practice.
        res = FUNC1(width, height, argb, 0, hash_chain, worst);
        break;
      case kLZ77Box:
        if (!FUNC10(&hash_chain_box, width * height)) goto Error;
        res = FUNC2(width, height, argb, 0, hash_chain,
                                        &hash_chain_box, worst);
        break;
      default:
        FUNC13(0);
    }
    if (!res) goto Error;

    // Next, try with a color cache and update the references.
    if (!FUNC5(argb, quality, worst, &cache_bits_tmp)) {
      goto Error;
    }
    if (cache_bits_tmp > 0) {
      if (!FUNC4(argb, cache_bits_tmp, worst)) {
        goto Error;
      }
    }

    // Keep the best backward references.
    FUNC11(histo, worst, cache_bits_tmp);
    bit_cost = FUNC12(histo);
    if (lz77_type_best == 0 || bit_cost < bit_cost_best) {
      VP8LBackwardRefs* const tmp = worst;
      worst = best;
      best = tmp;
      bit_cost_best = bit_cost;
      *cache_bits = cache_bits_tmp;
      lz77_type_best = lz77_type;
    }
  }
  FUNC13(lz77_type_best > 0);

  // Improve on simple LZ77 but only for high quality (TraceBackwards is
  // costly).
  if ((lz77_type_best == kLZ77Standard || lz77_type_best == kLZ77Box) &&
      quality >= 25) {
    const VP8LHashChain* const hash_chain_tmp =
        (lz77_type_best == kLZ77Standard) ? hash_chain : &hash_chain_box;
    if (FUNC7(width, height, argb, *cache_bits,
                                             hash_chain_tmp, best, worst)) {
      double bit_cost_trace;
      FUNC11(histo, worst, *cache_bits);
      bit_cost_trace = FUNC12(histo);
      if (bit_cost_trace < bit_cost_best) best = worst;
    }
  }

  FUNC0(width, best);

Error:
  FUNC9(&hash_chain_box);
  FUNC8(histo);
  return best;
}