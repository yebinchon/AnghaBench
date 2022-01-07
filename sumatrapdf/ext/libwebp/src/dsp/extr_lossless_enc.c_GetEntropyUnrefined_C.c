
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int const uint32_t ;
typedef int VP8LStreaks ;
struct TYPE_5__ {int sum; int entropy; } ;
typedef TYPE_1__ VP8LBitEntropy ;


 int GetEntropyUnrefinedHelper (int const,int,int const*,int*,TYPE_1__* const,int * const) ;
 int VP8LBitEntropyInit (TYPE_1__* const) ;
 scalar_t__ VP8LFastSLog2 (int ) ;
 int memset (int * const,int ,int) ;

__attribute__((used)) static void GetEntropyUnrefined_C(const uint32_t X[], int length,
                                  VP8LBitEntropy* const bit_entropy,
                                  VP8LStreaks* const stats) {
  int i;
  int i_prev = 0;
  uint32_t x_prev = X[0];

  memset(stats, 0, sizeof(*stats));
  VP8LBitEntropyInit(bit_entropy);

  for (i = 1; i < length; ++i) {
    const uint32_t x = X[i];
    if (x != x_prev) {
      GetEntropyUnrefinedHelper(x, i, &x_prev, &i_prev, bit_entropy, stats);
    }
  }
  GetEntropyUnrefinedHelper(0, i, &x_prev, &i_prev, bit_entropy, stats);

  bit_entropy->entropy += VP8LFastSLog2(bit_entropy->sum);
}
