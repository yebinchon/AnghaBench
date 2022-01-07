
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int tsd_t ;
typedef int ctl_stats_t ;
struct TYPE_6__ {unsigned int narenas; int destroyed; } ;
typedef TYPE_1__ ctl_arenas_t ;
struct TYPE_7__ {int initialized; } ;
typedef TYPE_2__ ctl_arena_t ;


 unsigned int MALLCTL_ARENAS_ALL ;
 unsigned int MALLCTL_ARENAS_DESTROYED ;
 int QUANTUM ;
 TYPE_2__* arenas_i_impl (int *,unsigned int,int,int) ;
 int b0get () ;
 scalar_t__ base_alloc (int *,int ,int,int ) ;
 scalar_t__ config_stats ;
 int ctl_arena_clear (TYPE_2__*) ;
 TYPE_1__* ctl_arenas ;
 int ctl_initialized ;
 int ctl_mtx ;
 int ctl_refresh (int *) ;
 int * ctl_stats ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 unsigned int narenas_total_get () ;
 int ql_new (int *) ;
 int * tsd_tsdn (int *) ;

__attribute__((used)) static bool
ctl_init(tsd_t *tsd) {
 bool ret;
 tsdn_t *tsdn = tsd_tsdn(tsd);

 malloc_mutex_lock(tsdn, &ctl_mtx);
 if (!ctl_initialized) {
  ctl_arena_t *ctl_sarena, *ctl_darena;
  unsigned i;





  if (ctl_arenas == ((void*)0)) {
   ctl_arenas = (ctl_arenas_t *)base_alloc(tsdn,
       b0get(), sizeof(ctl_arenas_t), QUANTUM);
   if (ctl_arenas == ((void*)0)) {
    ret = 1;
    goto label_return;
   }
  }

  if (config_stats && ctl_stats == ((void*)0)) {
   ctl_stats = (ctl_stats_t *)base_alloc(tsdn, b0get(),
       sizeof(ctl_stats_t), QUANTUM);
   if (ctl_stats == ((void*)0)) {
    ret = 1;
    goto label_return;
   }
  }






  if ((ctl_sarena = arenas_i_impl(tsd, MALLCTL_ARENAS_ALL, 0,
      1)) == ((void*)0)) {
   ret = 1;
   goto label_return;
  }
  ctl_sarena->initialized = 1;

  if ((ctl_darena = arenas_i_impl(tsd, MALLCTL_ARENAS_DESTROYED,
      0, 1)) == ((void*)0)) {
   ret = 1;
   goto label_return;
  }
  ctl_arena_clear(ctl_darena);






  ctl_arenas->narenas = narenas_total_get();
  for (i = 0; i < ctl_arenas->narenas; i++) {
   if (arenas_i_impl(tsd, i, 0, 1) == ((void*)0)) {
    ret = 1;
    goto label_return;
   }
  }

  ql_new(&ctl_arenas->destroyed);
  ctl_refresh(tsdn);

  ctl_initialized = 1;
 }

 ret = 0;
label_return:
 malloc_mutex_unlock(tsdn, &ctl_mtx);
 return ret;
}
