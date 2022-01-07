
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_4__ {int expired; int lock; scalar_t__ attached; } ;
typedef TYPE_1__ prof_tdata_t ;


 int malloc_mutex_lock (int *,int ) ;
 int malloc_mutex_unlock (int *,int ) ;
 int prof_tdata_should_destroy (int *,TYPE_1__*,int) ;

__attribute__((used)) static bool
prof_tdata_expire(tsdn_t *tsdn, prof_tdata_t *tdata) {
 bool destroy_tdata;

 malloc_mutex_lock(tsdn, tdata->lock);
 if (!tdata->expired) {
  tdata->expired = 1;
  destroy_tdata = tdata->attached ? 0 :
      prof_tdata_should_destroy(tsdn, tdata, 0);
 } else {
  destroy_tdata = 0;
 }
 malloc_mutex_unlock(tsdn, tdata->lock);

 return destroy_tdata;
}
