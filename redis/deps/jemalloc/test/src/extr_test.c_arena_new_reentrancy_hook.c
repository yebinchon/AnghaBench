
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arena_new_hook_ran ;
 int do_hook (int *,int *) ;
 int hooks_arena_new_hook ;

__attribute__((used)) static void
arena_new_reentrancy_hook() {
 do_hook(&arena_new_hook_ran, &hooks_arena_new_hook);
}
