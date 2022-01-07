
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WITNESS_RANK_EXTENT_POOL ;
 int extent_dss_boot () ;
 int extent_mutex_pool ;
 int extents_rtree ;
 scalar_t__ have_dss ;
 scalar_t__ mutex_pool_init (int *,char*,int ) ;
 scalar_t__ rtree_new (int *,int) ;

bool
extent_boot(void) {
 if (rtree_new(&extents_rtree, 1)) {
  return 1;
 }

 if (mutex_pool_init(&extent_mutex_pool, "extent_mutex_pool",
     WITNESS_RANK_EXTENT_POOL)) {
  return 1;
 }

 if (have_dss) {
  extent_dss_boot();
 }

 return 0;
}
