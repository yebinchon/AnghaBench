
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int max_size; } ;
typedef TYPE_1__ VP8LHistogramSet ;


 int assert (int) ;
 int kInvalidHistogramSymbol ;
 int memset (int* const,int ,int) ;

__attribute__((used)) static void OptimizeHistogramSymbols(const VP8LHistogramSet* const set,
                                     uint16_t* const cluster_mappings,
                                     int num_clusters,
                                     uint16_t* const cluster_mappings_tmp,
                                     uint16_t* const symbols) {
  int i, cluster_max;
  int do_continue = 1;

  while (do_continue) {
    do_continue = 0;
    for (i = 0; i < num_clusters; ++i) {
      int k;
      k = cluster_mappings[i];
      while (k != cluster_mappings[k]) {
        cluster_mappings[k] = cluster_mappings[cluster_mappings[k]];
        k = cluster_mappings[k];
      }
      if (k != cluster_mappings[i]) {
        do_continue = 1;
        cluster_mappings[i] = k;
      }
    }
  }

  cluster_max = 0;
  memset(cluster_mappings_tmp, 0,
         set->max_size * sizeof(*cluster_mappings_tmp));
  assert(cluster_mappings[0] == 0);

  for (i = 0; i < set->max_size; ++i) {
    int cluster;
    if (symbols[i] == kInvalidHistogramSymbol) continue;
    cluster = cluster_mappings[symbols[i]];
    assert(symbols[i] < num_clusters);
    if (cluster > 0 && cluster_mappings_tmp[cluster] == 0) {
      ++cluster_max;
      cluster_mappings_tmp[cluster] = cluster_max;
    }
    symbols[i] = cluster_mappings_tmp[cluster];
  }


  cluster_max = 0;
  for (i = 0; i < set->max_size; ++i) {
    if (symbols[i] == kInvalidHistogramSymbol) continue;
    if (symbols[i] <= cluster_max) continue;
    ++cluster_max;
    assert(symbols[i] == cluster_max);
  }
}
