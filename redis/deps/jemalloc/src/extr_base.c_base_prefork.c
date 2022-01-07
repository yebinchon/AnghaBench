
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_3__ {int mtx; } ;
typedef TYPE_1__ base_t ;


 int malloc_mutex_prefork (int *,int *) ;

void
base_prefork(tsdn_t *tsdn, base_t *base) {
 malloc_mutex_prefork(tsdn, &base->mtx);
}
