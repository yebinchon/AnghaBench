
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int size; int ** histograms; } ;
typedef TYPE_1__ VP8LHistogramSet ;
typedef int VP8LHistogram ;
typedef int DominantCostRange ;


 int DominantCostRangeInit (int *) ;
 int GetHistoBinIndex (int *,int *,int) ;
 int UpdateDominantCostRange (int *,int *) ;

__attribute__((used)) static void HistogramAnalyzeEntropyBin(VP8LHistogramSet* const image_histo,
                                       uint16_t* const bin_map,
                                       int low_effort) {
  int i;
  VP8LHistogram** const histograms = image_histo->histograms;
  const int histo_size = image_histo->size;
  DominantCostRange cost_range;
  DominantCostRangeInit(&cost_range);


  for (i = 0; i < histo_size; ++i) {
    if (histograms[i] == ((void*)0)) continue;
    UpdateDominantCostRange(histograms[i], &cost_range);
  }



  for (i = 0; i < histo_size; ++i) {


    if (histograms[i] == ((void*)0)) continue;
    bin_map[i] = GetHistoBinIndex(histograms[i], &cost_range, low_effort);
  }
}
