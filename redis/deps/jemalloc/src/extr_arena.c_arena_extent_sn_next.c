
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extent_sn_next; } ;
typedef TYPE_1__ arena_t ;


 int ATOMIC_RELAXED ;
 size_t atomic_fetch_add_zu (int *,int,int ) ;

size_t
arena_extent_sn_next(arena_t *arena) {
 return atomic_fetch_add_zu(&arena->extent_sn_next, 1, ATOMIC_RELAXED);
}
