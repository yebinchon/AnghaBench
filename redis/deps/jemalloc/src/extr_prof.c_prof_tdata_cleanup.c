
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int prof_tdata_t ;


 int config_prof ;
 int prof_tdata_detach (int *,int *) ;
 int * tsd_prof_tdata_get (int *) ;

void
prof_tdata_cleanup(tsd_t *tsd) {
 prof_tdata_t *tdata;

 if (!config_prof) {
  return;
 }

 tdata = tsd_prof_tdata_get(tsd);
 if (tdata != ((void*)0)) {
  prof_tdata_detach(tsd, tdata);
 }
}
