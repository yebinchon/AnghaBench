
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int size; int ** histograms; } ;
typedef TYPE_1__ VP8LHistogramSet ;



__attribute__((used)) static void RemoveEmptyHistograms(VP8LHistogramSet* const image_histo) {
  uint32_t size;
  int i;
  for (i = 0, size = 0; i < image_histo->size; ++i) {
    if (image_histo->histograms[i] == ((void*)0)) continue;
    image_histo->histograms[size++] = image_histo->histograms[i];
  }
  image_histo->size = size;
}
