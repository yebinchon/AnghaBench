
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ bin_t ;


 int malloc_mutex_postfork_child (int *,int *) ;

void
bin_postfork_child(tsdn_t *tsdn, bin_t *bin) {
 malloc_mutex_postfork_child(tsdn, &bin->lock);
}
