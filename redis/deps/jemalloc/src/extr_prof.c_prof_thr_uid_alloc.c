
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int tsdn_t ;


 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int next_thr_uid ;
 int next_thr_uid_mtx ;

__attribute__((used)) static uint64_t
prof_thr_uid_alloc(tsdn_t *tsdn) {
 uint64_t thr_uid;

 malloc_mutex_lock(tsdn, &next_thr_uid_mtx);
 thr_uid = next_thr_uid;
 next_thr_uid++;
 malloc_mutex_unlock(tsdn, &next_thr_uid_mtx);

 return thr_uid;
}
