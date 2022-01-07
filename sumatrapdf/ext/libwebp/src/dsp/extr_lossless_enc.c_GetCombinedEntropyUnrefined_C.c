
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ const uint32_t ;
typedef int VP8LStreaks ;
struct TYPE_5__ {int sum; int entropy; } ;
typedef TYPE_1__ VP8LBitEntropy ;


 int GetEntropyUnrefinedHelper (scalar_t__ const,int,scalar_t__ const*,int*,TYPE_1__* const,int * const) ;
 int VP8LBitEntropyInit (TYPE_1__* const) ;
 scalar_t__ VP8LFastSLog2 (int ) ;
 int memset (int * const,int ,int) ;

__attribute__((used)) static void GetCombinedEntropyUnrefined_C(const uint32_t X[],
                                          const uint32_t Y[],
                                          int length,
                                          VP8LBitEntropy* const bit_entropy,
                                          VP8LStreaks* const stats) {
  int i = 1;
  int i_prev = 0;
  uint32_t xy_prev = X[0] + Y[0];

  memset(stats, 0, sizeof(*stats));
  VP8LBitEntropyInit(bit_entropy);

  for (i = 1; i < length; ++i) {
    const uint32_t xy = X[i] + Y[i];
    if (xy != xy_prev) {
      GetEntropyUnrefinedHelper(xy, i, &xy_prev, &i_prev, bit_entropy, stats);
    }
  }
  GetEntropyUnrefinedHelper(0, i, &xy_prev, &i_prev, bit_entropy, stats);

  bit_entropy->entropy += VP8LFastSLog2(bit_entropy->sum);
}
