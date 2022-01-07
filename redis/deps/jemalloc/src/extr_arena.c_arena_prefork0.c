
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_6__ {int mtx; } ;
struct TYPE_5__ {int mtx; } ;
struct TYPE_7__ {TYPE_2__ decay_muzzy; TYPE_1__ decay_dirty; } ;
typedef TYPE_3__ arena_t ;


 int malloc_mutex_prefork (int *,int *) ;

void
arena_prefork0(tsdn_t *tsdn, arena_t *arena) {
 malloc_mutex_prefork(tsdn, &arena->decay_dirty.mtx);
 malloc_mutex_prefork(tsdn, &arena->decay_muzzy.mtx);
}
