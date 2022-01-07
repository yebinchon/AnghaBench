
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_6__ {int mtx; } ;
typedef TYPE_1__ extents_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
typedef int arena_t ;


 int assert (int ) ;
 int extent_activate_locked (int *,int *,TYPE_1__*,int *) ;
 int extent_can_coalesce (int *,TYPE_1__*,int *,int *) ;
 int extent_deactivate_locked (int *,int *,TYPE_1__*,int *) ;
 int extent_merge_impl (int *,int *,int **,int *,int *,int) ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;

__attribute__((used)) static bool
extent_coalesce(tsdn_t *tsdn, arena_t *arena, extent_hooks_t **r_extent_hooks,
    extents_t *extents, extent_t *inner, extent_t *outer, bool forward,
    bool growing_retained) {
 assert(extent_can_coalesce(arena, extents, inner, outer));

 extent_activate_locked(tsdn, arena, extents, outer);

 malloc_mutex_unlock(tsdn, &extents->mtx);
 bool err = extent_merge_impl(tsdn, arena, r_extent_hooks,
     forward ? inner : outer, forward ? outer : inner, growing_retained);
 malloc_mutex_lock(tsdn, &extents->mtx);

 if (err) {
  extent_deactivate_locked(tsdn, arena, extents, outer);
 }

 return err;
}
