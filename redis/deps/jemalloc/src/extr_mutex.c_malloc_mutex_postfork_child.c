
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_6__ {int rank; int name; } ;
struct TYPE_7__ {int lock_order; TYPE_1__ witness; } ;
typedef TYPE_2__ malloc_mutex_t ;


 int abort () ;
 scalar_t__ malloc_mutex_init (TYPE_2__*,int ,int ,int ) ;
 int malloc_mutex_unlock (int *,TYPE_2__*) ;
 int malloc_printf (char*) ;
 scalar_t__ opt_abort ;

void
malloc_mutex_postfork_child(tsdn_t *tsdn, malloc_mutex_t *mutex) {



 if (malloc_mutex_init(mutex, mutex->witness.name,
     mutex->witness.rank, mutex->lock_order)) {
  malloc_printf("<jemalloc>: Error re-initializing mutex in "
      "child\n");
  if (opt_abort) {
   abort();
  }
 }

}
