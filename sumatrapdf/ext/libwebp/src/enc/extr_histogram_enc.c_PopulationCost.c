
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {scalar_t__** streaks; } ;
typedef TYPE_1__ VP8LStreaks ;
struct TYPE_8__ {int nonzeros; int nonzero_code; } ;
typedef TYPE_2__ VP8LBitEntropy ;


 double BitsEntropyRefine (TYPE_2__*) ;
 double FinalHuffmanCost (TYPE_1__*) ;
 int VP8LGetEntropyUnrefined (int const* const,int,TYPE_2__*,TYPE_1__*) ;
 int VP8L_NON_TRIVIAL_SYM ;

__attribute__((used)) static double PopulationCost(const uint32_t* const population, int length,
                             uint32_t* const trivial_sym,
                             uint8_t* const is_used) {
  VP8LBitEntropy bit_entropy;
  VP8LStreaks stats;
  VP8LGetEntropyUnrefined(population, length, &bit_entropy, &stats);
  if (trivial_sym != ((void*)0)) {
    *trivial_sym = (bit_entropy.nonzeros == 1) ? bit_entropy.nonzero_code
                                               : VP8L_NON_TRIVIAL_SYM;
  }

  *is_used = (stats.streaks[1][0] != 0 || stats.streaks[1][1] != 0);

  return BitsEntropyRefine(&bit_entropy) + FinalHuffmanCost(&stats);
}
