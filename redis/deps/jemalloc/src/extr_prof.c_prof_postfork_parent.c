
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
 int malloc_mutex_postfork_parent (int *,int *) ;
 int next_thr_uid_mtx ;
 scalar_t__ opt_prof ;
 int prof_active_mtx ;
 int prof_dump_mtx ;
 int prof_dump_seq_mtx ;
 int prof_gdump_mtx ;
 int prof_thread_active_init_mtx ;
 int * tdata_locks ;
 int tdatas_mtx ;

void
prof_postfork_parent(tsdn_t *tsdn) {
 if (config_prof && opt_prof) {
  unsigned i;

  malloc_mutex_postfork_parent(tsdn,
      &prof_thread_active_init_mtx);
  malloc_mutex_postfork_parent(tsdn, &next_thr_uid_mtx);
  malloc_mutex_postfork_parent(tsdn, &prof_gdump_mtx);
  malloc_mutex_postfork_parent(tsdn, &prof_dump_seq_mtx);
  malloc_mutex_postfork_parent(tsdn, &prof_active_mtx);
  for (i = 0; i < PROF_NCTX_LOCKS; i++) {
   malloc_mutex_postfork_parent(tsdn, &gctx_locks[i]);
  }
  for (i = 0; i < PROF_NTDATA_LOCKS; i++) {
   malloc_mutex_postfork_parent(tsdn, &tdata_locks[i]);
  }
  malloc_mutex_postfork_parent(tsdn, &tdatas_mtx);
  malloc_mutex_postfork_parent(tsdn, &bt2gctx_mtx);
  malloc_mutex_postfork_parent(tsdn, &prof_dump_mtx);
 }
}
