
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int tsd_t ;
typedef int arena_t ;


 int * arena_get (int ,int ,int) ;
 int pre_reentrancy (int *,int *) ;
 int * tsd_fetch () ;
 int tsd_tsdn (int *) ;
 scalar_t__ tsdn_null (int *) ;
 int * tsdn_tsd (int *) ;

__attribute__((used)) static void
extent_hook_pre_reentrancy(tsdn_t *tsdn, arena_t *arena) {
 tsd_t *tsd = tsdn_null(tsdn) ? tsd_fetch() : tsdn_tsd(tsdn);
 if (arena == arena_get(tsd_tsdn(tsd), 0, 0)) {







  pre_reentrancy(tsd, ((void*)0));
 } else {
  pre_reentrancy(tsd, arena);
 }
}
