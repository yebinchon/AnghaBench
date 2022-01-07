
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int ctl_arena_t ;
typedef int arena_t ;


 int * arenas_i (unsigned int) ;
 int ctl_arena_clear (int *) ;
 int ctl_arena_stats_amerge (int *,int *,int *) ;
 int ctl_arena_stats_sdmerge (int *,int *,int) ;

__attribute__((used)) static void
ctl_arena_refresh(tsdn_t *tsdn, arena_t *arena, ctl_arena_t *ctl_sdarena,
    unsigned i, bool destroyed) {
 ctl_arena_t *ctl_arena = arenas_i(i);

 ctl_arena_clear(ctl_arena);
 ctl_arena_stats_amerge(tsdn, ctl_arena, arena);

 ctl_arena_stats_sdmerge(ctl_sdarena, ctl_arena, destroyed);
}
