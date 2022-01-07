
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {double bit_cost_; } ;
typedef TYPE_1__ VP8LHistogram ;
struct TYPE_9__ {int cost_combo; int cost_diff; } ;
typedef TYPE_2__ HistogramPair ;


 int GetCombinedHistogramEntropy (TYPE_1__ const* const,TYPE_1__ const* const,double const,int*) ;

__attribute__((used)) static void HistoQueueUpdatePair(const VP8LHistogram* const h1,
                                 const VP8LHistogram* const h2,
                                 double threshold,
                                 HistogramPair* const pair) {
  const double sum_cost = h1->bit_cost_ + h2->bit_cost_;
  pair->cost_combo = 0.;
  GetCombinedHistogramEntropy(h1, h2, sum_cost + threshold, &pair->cost_combo);
  pair->cost_diff = pair->cost_combo - sum_cost;
}
