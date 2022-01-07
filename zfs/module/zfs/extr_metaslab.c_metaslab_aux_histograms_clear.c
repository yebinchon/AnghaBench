
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ms_deferhist; int ms_synchist; int ms_loaded; } ;
typedef TYPE_1__ metaslab_t ;


 int ASSERT (int ) ;
 int TXG_DEFER_SIZE ;
 int bzero (int ,int) ;

__attribute__((used)) static void
metaslab_aux_histograms_clear(metaslab_t *msp)
{




 ASSERT(msp->ms_loaded);

 bzero(msp->ms_synchist, sizeof (msp->ms_synchist));
 for (int t = 0; t < TXG_DEFER_SIZE; t++)
  bzero(msp->ms_deferhist[t], sizeof (msp->ms_deferhist[t]));
}
