
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int uint32_t ;
typedef int best_idx2 ;
struct TYPE_21__ {int size; TYPE_2__** histograms; } ;
typedef TYPE_1__ VP8LHistogramSet ;
struct TYPE_22__ {int bit_cost_; } ;
typedef TYPE_2__ VP8LHistogram ;
struct TYPE_24__ {int size; int max_size; TYPE_3__* queue; } ;
struct TYPE_23__ {int cost_diff; int idx1; int idx2; int cost_combo; } ;
typedef TYPE_3__ HistogramPair ;
typedef TYPE_4__ HistoQueue ;


 int HistoQueueClear (TYPE_4__*) ;
 int HistoQueueInit (TYPE_4__*,int const) ;
 int HistoQueuePopPair (TYPE_4__*,TYPE_3__* const) ;
 double HistoQueuePush (TYPE_4__*,TYPE_2__** const,int,int,double) ;
 int HistoQueueUpdateHead (TYPE_4__*,TYPE_3__* const) ;
 int HistoQueueUpdatePair (TYPE_2__*,TYPE_2__*,int,TYPE_3__* const) ;
 int HistogramAdd (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int HistogramSetRemoveHistogram (TYPE_1__* const,int,int* const) ;
 int const MyRand (int*) ;
 int PairComparison ;
 int WebPSafeFree (int*) ;
 scalar_t__ WebPSafeMalloc (int,int) ;
 int assert (int) ;
 scalar_t__ bsearch (int*,int*,int,int,int *) ;
 int memmove (int*,int*,int) ;

__attribute__((used)) static int HistogramCombineStochastic(VP8LHistogramSet* const image_histo,
                                      int* const num_used, int min_cluster_size,
                                      int* const do_greedy) {
  int j, iter;
  uint32_t seed = 1;
  int tries_with_no_success = 0;
  const int outer_iters = *num_used;
  const int num_tries_no_success = outer_iters / 2;
  VP8LHistogram** const histograms = image_histo->histograms;



  HistoQueue histo_queue;
  const int kHistoQueueSize = 9;
  int ok = 0;


  int* mappings;

  if (*num_used < min_cluster_size) {
    *do_greedy = 1;
    return 1;
  }

  mappings = (int*) WebPSafeMalloc(*num_used, sizeof(*mappings));
  if (mappings == ((void*)0)) return 0;
  if (!HistoQueueInit(&histo_queue, kHistoQueueSize)) goto End;

  for (j = 0, iter = 0; iter < image_histo->size; ++iter) {
    if (histograms[iter] == ((void*)0)) continue;
    mappings[j++] = iter;
  }
  assert(j == *num_used);


  for (iter = 0;
       iter < outer_iters && *num_used >= min_cluster_size &&
           ++tries_with_no_success < num_tries_no_success;
       ++iter) {
    int* mapping_index;
    double best_cost =
        (histo_queue.size == 0) ? 0. : histo_queue.queue[0].cost_diff;
    int best_idx1 = -1, best_idx2 = 1;
    const uint32_t rand_range = (*num_used - 1) * (*num_used);


    const int num_tries = (*num_used) / 2;


    for (j = 0; *num_used >= 2 && j < num_tries; ++j) {
      double curr_cost;

      const uint32_t tmp = MyRand(&seed) % rand_range;
      uint32_t idx1 = tmp / (*num_used - 1);
      uint32_t idx2 = tmp % (*num_used - 1);
      if (idx2 >= idx1) ++idx2;
      idx1 = mappings[idx1];
      idx2 = mappings[idx2];


      curr_cost =
          HistoQueuePush(&histo_queue, histograms, idx1, idx2, best_cost);
      if (curr_cost < 0) {
        best_cost = curr_cost;

        if (histo_queue.size == histo_queue.max_size) break;
      }
    }
    if (histo_queue.size == 0) continue;


    best_idx1 = histo_queue.queue[0].idx1;
    best_idx2 = histo_queue.queue[0].idx2;
    assert(best_idx1 < best_idx2);

    mapping_index = (int*) bsearch(&best_idx2, mappings, *num_used,
                                   sizeof(best_idx2), &PairComparison);
    assert(mapping_index != ((void*)0));
    memmove(mapping_index, mapping_index + 1, sizeof(*mapping_index) *
        ((*num_used) - (mapping_index - mappings) - 1));

    HistogramAdd(histograms[best_idx2], histograms[best_idx1],
                 histograms[best_idx1]);
    histograms[best_idx1]->bit_cost_ = histo_queue.queue[0].cost_combo;
    HistogramSetRemoveHistogram(image_histo, best_idx2, num_used);


    for (j = 0; j < histo_queue.size;) {
      HistogramPair* const p = histo_queue.queue + j;
      const int is_idx1_best = p->idx1 == best_idx1 || p->idx1 == best_idx2;
      const int is_idx2_best = p->idx2 == best_idx1 || p->idx2 == best_idx2;
      int do_eval = 0;


      if (is_idx1_best && is_idx2_best) {
        HistoQueuePopPair(&histo_queue, p);
        continue;
      }


      if (is_idx1_best) {
        p->idx1 = best_idx1;
        do_eval = 1;
      } else if (is_idx2_best) {
        p->idx2 = best_idx1;
        do_eval = 1;
      }

      if (p->idx1 > p->idx2) {
        const int tmp = p->idx2;
        p->idx2 = p->idx1;
        p->idx1 = tmp;
      }
      if (do_eval) {

        HistoQueueUpdatePair(histograms[p->idx1], histograms[p->idx2], 0., p);
        if (p->cost_diff >= 0.) {
          HistoQueuePopPair(&histo_queue, p);
          continue;
        }
      }
      HistoQueueUpdateHead(&histo_queue, p);
      ++j;
    }
    tries_with_no_success = 0;
  }
  *do_greedy = (*num_used <= min_cluster_size);
  ok = 1;

End:
  HistoQueueClear(&histo_queue);
  WebPSafeFree(mappings);
  return ok;
}
