
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {scalar_t__ ms_disabled; int ms_allocator; int ms_weight; int * ms_allocating; int ms_loaded; } ;
typedef TYPE_1__ metaslab_t ;


 int METASLAB_ACTIVE_MASK ;
 int TXG_CONCURRENT_STATES ;
 int TXG_MASK ;
 int VERIFY0 (int ) ;
 int metaslab_debug_unload ;
 int metaslab_passivate (TYPE_1__*,int) ;
 int metaslab_unload (TYPE_1__*) ;
 int range_tree_space (int ) ;

__attribute__((used)) static void
metaslab_evict(metaslab_t *msp, uint64_t txg)
{
 if (!msp->ms_loaded || msp->ms_disabled != 0)
  return;

 for (int t = 1; t < TXG_CONCURRENT_STATES; t++) {
  VERIFY0(range_tree_space(
      msp->ms_allocating[(txg + t) & TXG_MASK]));
 }
 if (msp->ms_allocator != -1)
  metaslab_passivate(msp, msp->ms_weight & ~METASLAB_ACTIVE_MASK);

 if (!metaslab_debug_unload)
  metaslab_unload(msp);
}
