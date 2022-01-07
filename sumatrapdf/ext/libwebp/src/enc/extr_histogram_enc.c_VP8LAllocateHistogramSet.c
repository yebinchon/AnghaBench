
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int max_size; int size; int ** histograms; } ;
typedef TYPE_1__ VP8LHistogramSet ;
typedef int VP8LHistogram ;


 int HistogramSetResetPointers (TYPE_1__*,int) ;
 size_t HistogramSetTotalSize (int,int) ;
 int VP8LHistogramInit (int *,int,int ) ;
 scalar_t__ WebPSafeMalloc (size_t const,int) ;

VP8LHistogramSet* VP8LAllocateHistogramSet(int size, int cache_bits) {
  int i;
  VP8LHistogramSet* set;
  const size_t total_size = HistogramSetTotalSize(size, cache_bits);
  uint8_t* memory = (uint8_t*)WebPSafeMalloc(total_size, sizeof(*memory));
  if (memory == ((void*)0)) return ((void*)0);

  set = (VP8LHistogramSet*)memory;
  memory += sizeof(*set);
  set->histograms = (VP8LHistogram**)memory;
  set->max_size = size;
  set->size = size;
  HistogramSetResetPointers(set, cache_bits);
  for (i = 0; i < size; ++i) {
    VP8LHistogramInit(set->histograms[i], cache_bits, 0);
  }
  return set;
}
