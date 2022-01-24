#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  best_idx2 ;
struct TYPE_21__ {int size; TYPE_2__** histograms; } ;
typedef  TYPE_1__ VP8LHistogramSet ;
struct TYPE_22__ {int /*<<< orphan*/  bit_cost_; } ;
typedef  TYPE_2__ VP8LHistogram ;
struct TYPE_24__ {int size; int max_size; TYPE_3__* queue; } ;
struct TYPE_23__ {int cost_diff; int idx1; int idx2; int /*<<< orphan*/  cost_combo; } ;
typedef  TYPE_3__ HistogramPair ;
typedef  TYPE_4__ HistoQueue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__* const) ; 
 double FUNC3 (TYPE_4__*,TYPE_2__** const,int,int,double) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*,int,TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__* const,int,int* const) ; 
 int const FUNC8 (int*) ; 
 int /*<<< orphan*/  PairComparison ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 scalar_t__ FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int*,int*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int*,int*,int) ; 

__attribute__((used)) static int FUNC14(VP8LHistogramSet* const image_histo,
                                      int* const num_used, int min_cluster_size,
                                      int* const do_greedy) {
  int j, iter;
  uint32_t seed = 1;
  int tries_with_no_success = 0;
  const int outer_iters = *num_used;
  const int num_tries_no_success = outer_iters / 2;
  VP8LHistogram** const histograms = image_histo->histograms;
  // Priority queue of histogram pairs. Its size of 'kHistoQueueSize'
  // impacts the quality of the compression and the speed: the smaller the
  // faster but the worse for the compression.
  HistoQueue histo_queue;
  const int kHistoQueueSize = 9;
  int ok = 0;
  // mapping from an index in image_histo with no NULL histogram to the full
  // blown image_histo.
  int* mappings;

  if (*num_used < min_cluster_size) {
    *do_greedy = 1;
    return 1;
  }

  mappings = (int*) FUNC10(*num_used, sizeof(*mappings));
  if (mappings == NULL) return 0;
  if (!FUNC1(&histo_queue, kHistoQueueSize)) goto End;
  // Fill the initial mapping.
  for (j = 0, iter = 0; iter < image_histo->size; ++iter) {
    if (histograms[iter] == NULL) continue;
    mappings[j++] = iter;
  }
  FUNC11(j == *num_used);

  // Collapse similar histograms in 'image_histo'.
  for (iter = 0;
       iter < outer_iters && *num_used >= min_cluster_size &&
           ++tries_with_no_success < num_tries_no_success;
       ++iter) {
    int* mapping_index;
    double best_cost =
        (histo_queue.size == 0) ? 0. : histo_queue.queue[0].cost_diff;
    int best_idx1 = -1, best_idx2 = 1;
    const uint32_t rand_range = (*num_used - 1) * (*num_used);
    // (*num_used) / 2 was chosen empirically. Less means faster but worse
    // compression.
    const int num_tries = (*num_used) / 2;

    // Pick random samples.
    for (j = 0; *num_used >= 2 && j < num_tries; ++j) {
      double curr_cost;
      // Choose two different histograms at random and try to combine them.
      const uint32_t tmp = FUNC8(&seed) % rand_range;
      uint32_t idx1 = tmp / (*num_used - 1);
      uint32_t idx2 = tmp % (*num_used - 1);
      if (idx2 >= idx1) ++idx2;
      idx1 = mappings[idx1];
      idx2 = mappings[idx2];

      // Calculate cost reduction on combination.
      curr_cost =
          FUNC3(&histo_queue, histograms, idx1, idx2, best_cost);
      if (curr_cost < 0) {  // found a better pair?
        best_cost = curr_cost;
        // Empty the queue if we reached full capacity.
        if (histo_queue.size == histo_queue.max_size) break;
      }
    }
    if (histo_queue.size == 0) continue;

    // Get the best histograms.
    best_idx1 = histo_queue.queue[0].idx1;
    best_idx2 = histo_queue.queue[0].idx2;
    FUNC11(best_idx1 < best_idx2);
    // Pop best_idx2 from mappings.
    mapping_index = (int*) FUNC12(&best_idx2, mappings, *num_used,
                                   sizeof(best_idx2), &PairComparison);
    FUNC11(mapping_index != NULL);
    FUNC13(mapping_index, mapping_index + 1, sizeof(*mapping_index) *
        ((*num_used) - (mapping_index - mappings) - 1));
    // Merge the histograms and remove best_idx2 from the queue.
    FUNC6(histograms[best_idx2], histograms[best_idx1],
                 histograms[best_idx1]);
    histograms[best_idx1]->bit_cost_ = histo_queue.queue[0].cost_combo;
    FUNC7(image_histo, best_idx2, num_used);
    // Parse the queue and update each pair that deals with best_idx1,
    // best_idx2 or image_histo_size.
    for (j = 0; j < histo_queue.size;) {
      HistogramPair* const p = histo_queue.queue + j;
      const int is_idx1_best = p->idx1 == best_idx1 || p->idx1 == best_idx2;
      const int is_idx2_best = p->idx2 == best_idx1 || p->idx2 == best_idx2;
      int do_eval = 0;
      // The front pair could have been duplicated by a random pick so
      // check for it all the time nevertheless.
      if (is_idx1_best && is_idx2_best) {
        FUNC2(&histo_queue, p);
        continue;
      }
      // Any pair containing one of the two best indices should only refer to
      // best_idx1. Its cost should also be updated.
      if (is_idx1_best) {
        p->idx1 = best_idx1;
        do_eval = 1;
      } else if (is_idx2_best) {
        p->idx2 = best_idx1;
        do_eval = 1;
      }
      // Make sure the index order is respected.
      if (p->idx1 > p->idx2) {
        const int tmp = p->idx2;
        p->idx2 = p->idx1;
        p->idx1 = tmp;
      }
      if (do_eval) {
        // Re-evaluate the cost of an updated pair.
        FUNC5(histograms[p->idx1], histograms[p->idx2], 0., p);
        if (p->cost_diff >= 0.) {
          FUNC2(&histo_queue, p);
          continue;
        }
      }
      FUNC4(&histo_queue, p);
      ++j;
    }
    tries_with_no_success = 0;
  }
  *do_greedy = (*num_used <= min_cluster_size);
  ok = 1;

End:
  FUNC0(&histo_queue);
  FUNC9(mappings);
  return ok;
}