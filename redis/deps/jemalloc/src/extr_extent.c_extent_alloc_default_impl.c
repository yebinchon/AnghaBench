
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int dss_prec_t ;
struct TYPE_4__ {int dss_prec; } ;
typedef TYPE_1__ arena_t ;


 int ATOMIC_RELAXED ;
 scalar_t__ atomic_load_u (int *,int ) ;
 void* extent_alloc_core (int *,TYPE_1__*,void*,size_t,size_t,int*,int*,int ) ;
 scalar_t__ have_madvise_huge ;
 int pages_set_thp_state (void*,size_t) ;

__attribute__((used)) static void *
extent_alloc_default_impl(tsdn_t *tsdn, arena_t *arena, void *new_addr,
    size_t size, size_t alignment, bool *zero, bool *commit) {
 void *ret = extent_alloc_core(tsdn, arena, new_addr, size, alignment, zero,
     commit, (dss_prec_t)atomic_load_u(&arena->dss_prec,
     ATOMIC_RELAXED));
 if (have_madvise_huge && ret) {
  pages_set_thp_state(ret, size);
 }
 return ret;
}
