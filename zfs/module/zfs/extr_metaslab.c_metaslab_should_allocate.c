
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_3__ {scalar_t__ ms_max_size; scalar_t__ ms_unload_time; unsigned long long ms_weight; scalar_t__ ms_loaded; } ;
typedef TYPE_1__ metaslab_t ;
typedef int boolean_t ;


 unsigned long long METASLAB_WEIGHT_TYPE ;
 scalar_t__ SEC2NSEC (int ) ;
 int WEIGHT_GET_INDEX (unsigned long long) ;
 int WEIGHT_IS_SPACEBASED (unsigned long long) ;
 scalar_t__ gethrtime () ;
 int zfs_metaslab_max_size_cache_sec ;

boolean_t
metaslab_should_allocate(metaslab_t *msp, uint64_t asize, boolean_t try_hard)
{







 if (msp->ms_loaded ||
     (msp->ms_max_size != 0 && !try_hard && gethrtime() <
     msp->ms_unload_time + SEC2NSEC(zfs_metaslab_max_size_cache_sec)))
  return (msp->ms_max_size >= asize);

 boolean_t should_allocate;
 if (!WEIGHT_IS_SPACEBASED(msp->ms_weight)) {






  should_allocate = (asize <
      1ULL << (WEIGHT_GET_INDEX(msp->ms_weight) + 1));
 } else {
  should_allocate = (asize <=
      (msp->ms_weight & ~METASLAB_WEIGHT_TYPE));
 }

 return (should_allocate);
}
