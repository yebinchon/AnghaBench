
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {double bit_cost_; } ;
typedef TYPE_1__ VP8LHistogram ;


 int GetCombinedHistogramEntropy (TYPE_1__ const* const,TYPE_1__ const* const,double,double*) ;
 int assert (int) ;

__attribute__((used)) static double HistogramAddThresh(const VP8LHistogram* const a,
                                 const VP8LHistogram* const b,
                                 double cost_threshold) {
  double cost;
  assert(a != ((void*)0) && b != ((void*)0));
  cost = -a->bit_cost_;
  GetCombinedHistogramEntropy(a, b, cost_threshold, &cost);
  return cost;
}
