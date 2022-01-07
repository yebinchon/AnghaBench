
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nactive; } ;
typedef TYPE_1__ arena_t ;


 int ATOMIC_RELAXED ;
 int atomic_fetch_add_zu (int *,size_t,int ) ;

__attribute__((used)) static void
arena_nactive_add(arena_t *arena, size_t add_pages) {
 atomic_fetch_add_zu(&arena->nactive, add_pages, ATOMIC_RELAXED);
}
