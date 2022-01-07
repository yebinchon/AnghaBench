
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int hash_chain_box ;
typedef int VP8LHistogram ;
typedef int const VP8LHashChain ;
typedef int VP8LBackwardRefs ;


 int BackwardReferences2DLocality (int,int *) ;
 int BackwardReferencesLz77 (int,int,int const* const,int ,int const* const,int *) ;
 int BackwardReferencesLz77Box (int,int,int const* const,int ,int const* const,int const*,int *) ;
 int BackwardReferencesRle (int,int,int const* const,int ,int *) ;
 int BackwardRefsWithLocalCache (int const* const,int,int *) ;
 int CalculateBestCacheSize (int const* const,int,int *,int*) ;
 int MAX_COLOR_CACHE_BITS ;
 int * VP8LAllocateHistogram (int ) ;
 scalar_t__ VP8LBackwardReferencesTraceBackwards (int,int,int const* const,int,int const* const,int *,int *) ;
 int VP8LFreeHistogram (int *) ;
 int VP8LHashChainClear (int const*) ;
 int VP8LHashChainInit (int const*,int) ;
 int VP8LHistogramCreate (int *,int *,int) ;
 double VP8LHistogramEstimateBits (int *) ;
 int assert (int) ;



 int memset (int const*,int ,int) ;

__attribute__((used)) static VP8LBackwardRefs* GetBackwardReferences(
    int width, int height, const uint32_t* const argb, int quality,
    int lz77_types_to_try, int* const cache_bits,
    const VP8LHashChain* const hash_chain, VP8LBackwardRefs* best,
    VP8LBackwardRefs* worst) {
  const int cache_bits_initial = *cache_bits;
  double bit_cost_best = -1;
  VP8LHistogram* histo = ((void*)0);
  int lz77_type, lz77_type_best = 0;
  VP8LHashChain hash_chain_box;
  memset(&hash_chain_box, 0, sizeof(hash_chain_box));

  histo = VP8LAllocateHistogram(MAX_COLOR_CACHE_BITS);
  if (histo == ((void*)0)) goto Error;

  for (lz77_type = 1; lz77_types_to_try;
       lz77_types_to_try &= ~lz77_type, lz77_type <<= 1) {
    int res = 0;
    double bit_cost;
    int cache_bits_tmp = cache_bits_initial;
    if ((lz77_types_to_try & lz77_type) == 0) continue;
    switch (lz77_type) {
      case 129:
        res = BackwardReferencesRle(width, height, argb, 0, worst);
        break;
      case 128:


        res = BackwardReferencesLz77(width, height, argb, 0, hash_chain, worst);
        break;
      case 130:
        if (!VP8LHashChainInit(&hash_chain_box, width * height)) goto Error;
        res = BackwardReferencesLz77Box(width, height, argb, 0, hash_chain,
                                        &hash_chain_box, worst);
        break;
      default:
        assert(0);
    }
    if (!res) goto Error;


    if (!CalculateBestCacheSize(argb, quality, worst, &cache_bits_tmp)) {
      goto Error;
    }
    if (cache_bits_tmp > 0) {
      if (!BackwardRefsWithLocalCache(argb, cache_bits_tmp, worst)) {
        goto Error;
      }
    }


    VP8LHistogramCreate(histo, worst, cache_bits_tmp);
    bit_cost = VP8LHistogramEstimateBits(histo);
    if (lz77_type_best == 0 || bit_cost < bit_cost_best) {
      VP8LBackwardRefs* const tmp = worst;
      worst = best;
      best = tmp;
      bit_cost_best = bit_cost;
      *cache_bits = cache_bits_tmp;
      lz77_type_best = lz77_type;
    }
  }
  assert(lz77_type_best > 0);



  if ((lz77_type_best == 128 || lz77_type_best == 130) &&
      quality >= 25) {
    const VP8LHashChain* const hash_chain_tmp =
        (lz77_type_best == 128) ? hash_chain : &hash_chain_box;
    if (VP8LBackwardReferencesTraceBackwards(width, height, argb, *cache_bits,
                                             hash_chain_tmp, best, worst)) {
      double bit_cost_trace;
      VP8LHistogramCreate(histo, worst, *cache_bits);
      bit_cost_trace = VP8LHistogramEstimateBits(histo);
      if (bit_cost_trace < bit_cost_best) best = worst;
    }
  }

  BackwardReferences2DLocality(width, best);

Error:
  VP8LHashChainClear(&hash_chain_box);
  VP8LFreeHistogram(histo);
  return best;
}
