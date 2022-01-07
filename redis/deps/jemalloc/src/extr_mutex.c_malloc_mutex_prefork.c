
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int malloc_mutex_t ;


 int malloc_mutex_lock (int *,int *) ;

void
malloc_mutex_prefork(tsdn_t *tsdn, malloc_mutex_t *mutex) {
 malloc_mutex_lock(tsdn, mutex);
}
