
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 scalar_t__ ncleanups ;
 int* tsd_arenas_tdata_bypassp_get (int *) ;
 scalar_t__ tsd_boot0 () ;
 int * tsd_fetch () ;

tsd_t *
malloc_tsd_boot0(void) {
 tsd_t *tsd;

 ncleanups = 0;
 if (tsd_boot0()) {
  return ((void*)0);
 }
 tsd = tsd_fetch();
 *tsd_arenas_tdata_bypassp_get(tsd) = 1;
 return tsd;
}
