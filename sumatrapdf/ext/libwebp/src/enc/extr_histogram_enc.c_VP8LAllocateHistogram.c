
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int * literal_; } ;
typedef TYPE_1__ VP8LHistogram ;


 int VP8LGetHistogramSize (int) ;
 int VP8LHistogramInit (TYPE_1__*,int,int ) ;
 scalar_t__ WebPSafeMalloc (int const,int) ;

VP8LHistogram* VP8LAllocateHistogram(int cache_bits) {
  VP8LHistogram* histo = ((void*)0);
  const int total_size = VP8LGetHistogramSize(cache_bits);
  uint8_t* const memory = (uint8_t*)WebPSafeMalloc(total_size, sizeof(*memory));
  if (memory == ((void*)0)) return ((void*)0);
  histo = (VP8LHistogram*)memory;

  histo->literal_ = (uint32_t*)(memory + sizeof(VP8LHistogram));
  VP8LHistogramInit(histo, cache_bits, 0);
  return histo;
}
