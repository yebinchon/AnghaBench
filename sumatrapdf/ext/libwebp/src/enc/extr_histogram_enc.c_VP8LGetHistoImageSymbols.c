
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int map_tmp ;
typedef int VP8LHistogramSet ;
typedef int VP8LHistogram ;
typedef int VP8LBackwardRefs ;


 int BIN_SIZE ;
 double GetCombineCostFactor (int const,int) ;
 int HistogramAnalyzeEntropyBin (int * const,int * const,int) ;
 int HistogramBuild (int,int,int const* const,int * const) ;
 int HistogramCombineEntropyBin (int * const,int*,int * const,int * const,int * const,int * const,int const,double const,int) ;
 int HistogramCombineGreedy (int * const,int*) ;
 int HistogramCombineStochastic (int * const,int*,int const,int*) ;
 int HistogramCopyAndAnalyze (int * const,int * const,int*,int * const) ;
 int HistogramRemap (int * const,int * const,int * const) ;
 int MAX_HISTO_GREEDY ;
 int NUM_PARTITIONS ;
 int OptimizeHistogramSymbols (int * const,int * const,int const,int * const,int * const) ;
 int RemoveEmptyHistograms (int * const) ;
 int * VP8LAllocateHistogramSet (int const,int) ;
 int VP8LFreeHistogramSet (int * const) ;
 int VP8LSubSampleSize (int,int) ;
 int WebPSafeFree (int * const) ;
 int * WebPSafeMalloc (int,int) ;

int VP8LGetHistoImageSymbols(int xsize, int ysize,
                             const VP8LBackwardRefs* const refs,
                             int quality, int low_effort,
                             int histo_bits, int cache_bits,
                             VP8LHistogramSet* const image_histo,
                             VP8LHistogram* const tmp_histo,
                             uint16_t* const histogram_symbols) {
  int ok = 0;
  const int histo_xsize = histo_bits ? VP8LSubSampleSize(xsize, histo_bits) : 1;
  const int histo_ysize = histo_bits ? VP8LSubSampleSize(ysize, histo_bits) : 1;
  const int image_histo_raw_size = histo_xsize * histo_ysize;
  VP8LHistogramSet* const orig_histo =
      VP8LAllocateHistogramSet(image_histo_raw_size, cache_bits);



  const int entropy_combine_num_bins = low_effort ? NUM_PARTITIONS : BIN_SIZE;
  int entropy_combine;
  uint16_t* const map_tmp =
      WebPSafeMalloc(2 * image_histo_raw_size, sizeof(map_tmp));
  uint16_t* const cluster_mappings = map_tmp + image_histo_raw_size;
  int num_used = image_histo_raw_size;
  if (orig_histo == ((void*)0) || map_tmp == ((void*)0)) goto Error;


  HistogramBuild(xsize, histo_bits, refs, orig_histo);


  HistogramCopyAndAnalyze(orig_histo, image_histo, &num_used,
                          histogram_symbols);

  entropy_combine =
      (num_used > entropy_combine_num_bins * 2) && (quality < 100);

  if (entropy_combine) {
    uint16_t* const bin_map = map_tmp;
    const double combine_cost_factor =
        GetCombineCostFactor(image_histo_raw_size, quality);
    const uint32_t num_clusters = num_used;

    HistogramAnalyzeEntropyBin(image_histo, bin_map, low_effort);

    HistogramCombineEntropyBin(image_histo, &num_used, histogram_symbols,
                               cluster_mappings, tmp_histo, bin_map,
                               entropy_combine_num_bins, combine_cost_factor,
                               low_effort);
    OptimizeHistogramSymbols(image_histo, cluster_mappings, num_clusters,
                             map_tmp, histogram_symbols);
  }



  if (!low_effort || !entropy_combine) {
    const float x = quality / 100.f;

    const int threshold_size = (int)(1 + (x * x * x) * (MAX_HISTO_GREEDY - 1));
    int do_greedy;
    if (!HistogramCombineStochastic(image_histo, &num_used, threshold_size,
                                    &do_greedy)) {
      goto Error;
    }
    if (do_greedy) {
      RemoveEmptyHistograms(image_histo);
      if (!HistogramCombineGreedy(image_histo, &num_used)) {
        goto Error;
      }
    }
  }


  RemoveEmptyHistograms(image_histo);
  HistogramRemap(orig_histo, image_histo, histogram_symbols);

  ok = 1;

 Error:
  VP8LFreeHistogramSet(orig_histo);
  WebPSafeFree(map_tmp);
  return ok;
}
