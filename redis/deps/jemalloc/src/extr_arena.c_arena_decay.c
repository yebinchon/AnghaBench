
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int arena_t ;


 scalar_t__ arena_decay_dirty (int *,int *,int,int) ;
 int arena_decay_muzzy (int *,int *,int,int) ;

void
arena_decay(tsdn_t *tsdn, arena_t *arena, bool is_background_thread, bool all) {
 if (arena_decay_dirty(tsdn, arena, is_background_thread, all)) {
  return;
 }
 arena_decay_muzzy(tsdn, arena, is_background_thread, all);
}
