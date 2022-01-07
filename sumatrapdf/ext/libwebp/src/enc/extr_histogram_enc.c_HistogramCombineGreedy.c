
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int size; TYPE_2__** const histograms; } ;
typedef TYPE_1__ VP8LHistogramSet ;
struct TYPE_19__ {int bit_cost_; } ;
typedef TYPE_2__ VP8LHistogram ;
struct TYPE_21__ {int size; TYPE_3__* queue; } ;
struct TYPE_20__ {int idx1; int idx2; int cost_combo; } ;
typedef TYPE_3__ HistogramPair ;
typedef TYPE_4__ HistoQueue ;


 int HistoQueueClear (TYPE_4__*) ;
 int HistoQueueInit (TYPE_4__*,int const) ;
 int HistoQueuePopPair (TYPE_4__*,TYPE_3__* const) ;
 int HistoQueuePush (TYPE_4__*,TYPE_2__** const,int const,int,int) ;
 int HistoQueueUpdateHead (TYPE_4__*,TYPE_3__* const) ;
 int HistogramAdd (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int HistogramSetRemoveHistogram (TYPE_1__* const,int const,int* const) ;

__attribute__((used)) static int HistogramCombineGreedy(VP8LHistogramSet* const image_histo,
                                  int* const num_used) {
  int ok = 0;
  const int image_histo_size = image_histo->size;
  int i, j;
  VP8LHistogram** const histograms = image_histo->histograms;

  HistoQueue histo_queue;
  if (!HistoQueueInit(&histo_queue, image_histo_size * image_histo_size)) {
    goto End;
  }

  for (i = 0; i < image_histo_size; ++i) {
    if (image_histo->histograms[i] == ((void*)0)) continue;
    for (j = i + 1; j < image_histo_size; ++j) {

      if (image_histo->histograms[j] == ((void*)0)) continue;
      HistoQueuePush(&histo_queue, histograms, i, j, 0.);
    }
  }

  while (histo_queue.size > 0) {
    const int idx1 = histo_queue.queue[0].idx1;
    const int idx2 = histo_queue.queue[0].idx2;
    HistogramAdd(histograms[idx2], histograms[idx1], histograms[idx1]);
    histograms[idx1]->bit_cost_ = histo_queue.queue[0].cost_combo;


    HistogramSetRemoveHistogram(image_histo, idx2, num_used);


    for (i = 0; i < histo_queue.size;) {
      HistogramPair* const p = histo_queue.queue + i;
      if (p->idx1 == idx1 || p->idx2 == idx1 ||
          p->idx1 == idx2 || p->idx2 == idx2) {
        HistoQueuePopPair(&histo_queue, p);
      } else {
        HistoQueueUpdateHead(&histo_queue, p);
        ++i;
      }
    }


    for (i = 0; i < image_histo->size; ++i) {
      if (i == idx1 || image_histo->histograms[i] == ((void*)0)) continue;
      HistoQueuePush(&histo_queue, image_histo->histograms, idx1, i, 0.);
    }
  }

  ok = 1;

 End:
  HistoQueueClear(&histo_queue);
  return ok;
}
