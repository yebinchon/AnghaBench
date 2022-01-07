
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stats; int slabs_full; int slabs_nonfull; int * slabcur; int lock; } ;
typedef TYPE_1__ bin_t ;
typedef int bin_stats_t ;


 int WITNESS_RANK_BIN ;
 scalar_t__ config_stats ;
 int extent_heap_new (int *) ;
 int extent_list_init (int *) ;
 scalar_t__ malloc_mutex_init (int *,char*,int ,int ) ;
 int malloc_mutex_rank_exclusive ;
 int memset (int *,int ,int) ;

bool
bin_init(bin_t *bin) {
 if (malloc_mutex_init(&bin->lock, "bin", WITNESS_RANK_BIN,
     malloc_mutex_rank_exclusive)) {
  return 1;
 }
 bin->slabcur = ((void*)0);
 extent_heap_new(&bin->slabs_nonfull);
 extent_list_init(&bin->slabs_full);
 if (config_stats) {
  memset(&bin->stats, 0, sizeof(bin_stats_t));
 }
 return 0;
}
