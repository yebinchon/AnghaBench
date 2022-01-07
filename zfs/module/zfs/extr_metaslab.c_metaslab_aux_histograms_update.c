
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sm_shift; } ;
typedef TYPE_1__ space_map_t ;
struct TYPE_6__ {int ms_freeing; int ms_synchist; int * ms_defer; int * ms_deferhist; int ms_freed; scalar_t__ ms_loaded; TYPE_1__* ms_sm; } ;
typedef TYPE_2__ metaslab_t ;


 int ASSERT (int ) ;
 int TXG_DEFER_SIZE ;
 int metaslab_aux_histogram_add (int ,int ,int ) ;
 int metaslab_aux_histograms_clear (TYPE_2__*) ;

__attribute__((used)) static void
metaslab_aux_histograms_update(metaslab_t *msp)
{
 space_map_t *sm = msp->ms_sm;
 ASSERT(sm != ((void*)0));







 if (msp->ms_loaded) {
  metaslab_aux_histograms_clear(msp);

  metaslab_aux_histogram_add(msp->ms_synchist,
      sm->sm_shift, msp->ms_freed);

  for (int t = 0; t < TXG_DEFER_SIZE; t++) {
   metaslab_aux_histogram_add(msp->ms_deferhist[t],
       sm->sm_shift, msp->ms_defer[t]);
  }
 }

 metaslab_aux_histogram_add(msp->ms_synchist,
     sm->sm_shift, msp->ms_freeing);
}
