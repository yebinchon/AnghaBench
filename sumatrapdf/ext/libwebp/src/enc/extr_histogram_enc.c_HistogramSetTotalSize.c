
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VP8LHistogramSet ;
typedef int VP8LHistogram ;


 int VP8LGetHistogramSize (int) ;
 int WEBP_ALIGN_CST ;

__attribute__((used)) static size_t HistogramSetTotalSize(int size, int cache_bits) {
  const int histo_size = VP8LGetHistogramSize(cache_bits);
  return (sizeof(VP8LHistogramSet) + size * (sizeof(VP8LHistogram*) +
          histo_size + WEBP_ALIGN_CST));
}
