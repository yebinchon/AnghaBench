
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VP8LHashChain ;
typedef int VP8LBackwardRefs ;


 int * GetBackwardReferences (int,int,int const* const,int,int,int* const,int const* const,int * const,int * const) ;
 int * GetBackwardReferencesLowEffort (int,int,int const* const,int* const,int const* const,int * const) ;

VP8LBackwardRefs* VP8LGetBackwardReferences(
    int width, int height, const uint32_t* const argb, int quality,
    int low_effort, int lz77_types_to_try, int* const cache_bits,
    const VP8LHashChain* const hash_chain, VP8LBackwardRefs* const refs_tmp1,
    VP8LBackwardRefs* const refs_tmp2) {
  if (low_effort) {
    return GetBackwardReferencesLowEffort(width, height, argb, cache_bits,
                                          hash_chain, refs_tmp1);
  } else {
    return GetBackwardReferences(width, height, argb, quality,
                                 lz77_types_to_try, cache_bits, hash_chain,
                                 refs_tmp1, refs_tmp2);
  }
}
