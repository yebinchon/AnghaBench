
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dmu_tx_ksp ;
 int kstat_delete (int *) ;

void
dmu_tx_fini(void)
{
 if (dmu_tx_ksp != ((void*)0)) {
  kstat_delete(dmu_tx_ksp);
  dmu_tx_ksp = ((void*)0);
 }
}
