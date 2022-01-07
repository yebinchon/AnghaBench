
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 unsigned int PROF_NCTX_LOCKS ;
 unsigned int PROF_NTDATA_LOCKS ;
 int bt2gctx_mtx ;
 scalar_t__ config_prof ;
 int * gctx_locks ;
 int malloc_mutex_prefork (int *,int *) ;
 scalar_t__ opt_prof ;
 int prof_dump_mtx ;
 int * tdata_locks ;
 int tdatas_mtx ;

void
prof_prefork0(tsdn_t *tsdn) {
 if (config_prof && opt_prof) {
  unsigned i;

  malloc_mutex_prefork(tsdn, &prof_dump_mtx);
  malloc_mutex_prefork(tsdn, &bt2gctx_mtx);
  malloc_mutex_prefork(tsdn, &tdatas_mtx);
  for (i = 0; i < PROF_NTDATA_LOCKS; i++) {
   malloc_mutex_prefork(tsdn, &tdata_locks[i]);
  }
  for (i = 0; i < PROF_NCTX_LOCKS; i++) {
   malloc_mutex_prefork(tsdn, &gctx_locks[i]);
  }
 }
}
