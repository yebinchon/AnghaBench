
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_7__ {int initialized; } ;
typedef TYPE_1__ ctl_arena_t ;
typedef int arena_t ;
struct TYPE_8__ {int destroyed; } ;


 int EFAULT ;
 unsigned int MALLCTL_ARENAS_DESTROYED ;
 int arena_decay (int ,int *,int,int) ;
 int arena_destroy (int *,int *) ;
 int arena_i_reset_destroy_helper (int *,size_t const*,size_t,void*,size_t*,void*,size_t,unsigned int*,int **) ;
 scalar_t__ arena_nthreads_get (int *,int) ;
 int arena_reset (int *,int *) ;
 int arena_reset_finish_background_thread (int *,unsigned int) ;
 int arena_reset_prepare_background_thread (int *,unsigned int) ;
 TYPE_1__* arenas_i (unsigned int) ;
 int assert (int) ;
 int ctl_arena_refresh (int ,int *,TYPE_1__*,unsigned int,int) ;
 TYPE_4__* ctl_arenas ;
 int destroyed_link ;
 int ql_elm_new (TYPE_1__*,int ) ;
 int ql_tail_insert (int *,TYPE_1__*,int ) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static int
arena_i_destroy_ctl(tsd_t *tsd, const size_t *mib, size_t miblen, void *oldp,
    size_t *oldlenp, void *newp, size_t newlen) {
 int ret;
 unsigned arena_ind;
 arena_t *arena;
 ctl_arena_t *ctl_darena, *ctl_arena;

 ret = arena_i_reset_destroy_helper(tsd, mib, miblen, oldp, oldlenp,
     newp, newlen, &arena_ind, &arena);
 if (ret != 0) {
  goto label_return;
 }

 if (arena_nthreads_get(arena, 0) != 0 || arena_nthreads_get(arena,
     1) != 0) {
  ret = EFAULT;
  goto label_return;
 }

 arena_reset_prepare_background_thread(tsd, arena_ind);

 arena_reset(tsd, arena);
 arena_decay(tsd_tsdn(tsd), arena, 0, 1);
 ctl_darena = arenas_i(MALLCTL_ARENAS_DESTROYED);
 ctl_darena->initialized = 1;
 ctl_arena_refresh(tsd_tsdn(tsd), arena, ctl_darena, arena_ind, 1);

 arena_destroy(tsd, arena);
 ctl_arena = arenas_i(arena_ind);
 ctl_arena->initialized = 0;

 ql_elm_new(ctl_arena, destroyed_link);
 ql_tail_insert(&ctl_arenas->destroyed, ctl_arena, destroyed_link);
 arena_reset_finish_background_thread(tsd, arena_ind);

 assert(ret == 0);
label_return:
 return ret;
}
