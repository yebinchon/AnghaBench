
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_4__ {int prof_data; } ;
typedef TYPE_1__ malloc_mutex_t ;


 int malloc_mutex_assert_owner (int *,TYPE_1__*) ;
 int mutex_prof_data_init (int *) ;

void
malloc_mutex_prof_data_reset(tsdn_t *tsdn, malloc_mutex_t *mutex) {
 malloc_mutex_assert_owner(tsdn, mutex);
 mutex_prof_data_init(&mutex->prof_data);
}
