
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {double bit_cost_; int palette_code_bits_; } ;
typedef TYPE_1__ VP8LHistogram ;


 scalar_t__ GetCombinedHistogramEntropy (TYPE_1__ const* const,TYPE_1__ const* const,double,double*) ;
 int HistogramAdd (TYPE_1__ const* const,TYPE_1__ const* const,TYPE_1__* const) ;

__attribute__((used)) static double HistogramAddEval(const VP8LHistogram* const a,
                               const VP8LHistogram* const b,
                               VP8LHistogram* const out,
                               double cost_threshold) {
  double cost = 0;
  const double sum_cost = a->bit_cost_ + b->bit_cost_;
  cost_threshold += sum_cost;

  if (GetCombinedHistogramEntropy(a, b, cost_threshold, &cost)) {
    HistogramAdd(a, b, out);
    out->bit_cost_ = cost;
    out->palette_code_bits_ = a->palette_code_bits_;
  }

  return cost - sum_cost;
}
