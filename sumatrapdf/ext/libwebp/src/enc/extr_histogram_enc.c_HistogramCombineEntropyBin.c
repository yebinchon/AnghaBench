
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef int int16_t ;
struct TYPE_15__ {int size; TYPE_2__** histograms; } ;
typedef TYPE_1__ VP8LHistogramSet ;
struct TYPE_16__ {double bit_cost_; scalar_t__ trivial_symbol_; } ;
typedef TYPE_2__ VP8LHistogram ;


 int BIN_SIZE ;
 int HistogramAdd (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 double HistogramAddEval (TYPE_2__*,TYPE_2__*,TYPE_2__*,double const) ;
 int HistogramSetRemoveHistogram (TYPE_1__* const,int,int*) ;
 int HistogramSwap (TYPE_2__**,TYPE_2__**) ;
 int UpdateHistogramCost (TYPE_2__*) ;
 scalar_t__ VP8L_NON_TRIVIAL_SYM ;
 int assert (int) ;

__attribute__((used)) static void HistogramCombineEntropyBin(VP8LHistogramSet* const image_histo,
                                       int* num_used,
                                       const uint16_t* const clusters,
                                       uint16_t* const cluster_mappings,
                                       VP8LHistogram* cur_combo,
                                       const uint16_t* const bin_map,
                                       int num_bins,
                                       double combine_cost_factor,
                                       int low_effort) {
  VP8LHistogram** const histograms = image_histo->histograms;
  int idx;
  struct {
    int16_t first;

    uint16_t num_combine_failures;
  } bin_info[BIN_SIZE];

  assert(num_bins <= BIN_SIZE);
  for (idx = 0; idx < num_bins; ++idx) {
    bin_info[idx].first = -1;
    bin_info[idx].num_combine_failures = 0;
  }


  for (idx = 0; idx < *num_used; ++idx) cluster_mappings[idx] = idx;
  for (idx = 0; idx < image_histo->size; ++idx) {
    int bin_id, first;
    if (histograms[idx] == ((void*)0)) continue;
    bin_id = bin_map[idx];
    first = bin_info[bin_id].first;
    if (first == -1) {
      bin_info[bin_id].first = idx;
    } else if (low_effort) {
      HistogramAdd(histograms[idx], histograms[first], histograms[first]);
      HistogramSetRemoveHistogram(image_histo, idx, num_used);
      cluster_mappings[clusters[idx]] = clusters[first];
    } else {

      const double bit_cost = histograms[idx]->bit_cost_;
      const double bit_cost_thresh = -bit_cost * combine_cost_factor;
      const double curr_cost_diff =
          HistogramAddEval(histograms[first], histograms[idx],
                           cur_combo, bit_cost_thresh);
      if (curr_cost_diff < bit_cost_thresh) {





        const int try_combine =
            (cur_combo->trivial_symbol_ != VP8L_NON_TRIVIAL_SYM) ||
            ((histograms[idx]->trivial_symbol_ == VP8L_NON_TRIVIAL_SYM) &&
             (histograms[first]->trivial_symbol_ == VP8L_NON_TRIVIAL_SYM));
        const int max_combine_failures = 32;
        if (try_combine ||
            bin_info[bin_id].num_combine_failures >= max_combine_failures) {

          HistogramSwap(&cur_combo, &histograms[first]);
          HistogramSetRemoveHistogram(image_histo, idx, num_used);
          cluster_mappings[clusters[idx]] = clusters[first];
        } else {
          ++bin_info[bin_id].num_combine_failures;
        }
      }
    }
  }
  if (low_effort) {

    for (idx = 0; idx < image_histo->size; ++idx) {
      if (histograms[idx] == ((void*)0)) continue;
      UpdateHistogramCost(histograms[idx]);
    }
  }
}
