
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_3__ {int extent_grow_mtx; } ;
typedef TYPE_1__ arena_t ;


 int malloc_mutex_prefork (int *,int *) ;

void
arena_prefork2(tsdn_t *tsdn, arena_t *arena) {
 malloc_mutex_prefork(tsdn, &arena->extent_grow_mtx);
}
