
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int ** histograms; } ;
typedef TYPE_1__ VP8LHistogramSet ;


 int assert (int ) ;

__attribute__((used)) static void HistogramSetRemoveHistogram(VP8LHistogramSet* const set, int i,
                                        int* const num_used) {
  assert(set->histograms[i] != ((void*)0));
  set->histograms[i] = ((void*)0);
  --*num_used;

  if (i == set->size - 1) {
    while (set->size >= 1 && set->histograms[set->size - 1] == ((void*)0)) {
      --set->size;
    }
  }
}
