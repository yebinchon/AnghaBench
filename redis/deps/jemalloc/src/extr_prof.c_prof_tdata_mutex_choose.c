
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef int malloc_mutex_t ;


 size_t PROF_NTDATA_LOCKS ;
 int * tdata_locks ;

__attribute__((used)) static malloc_mutex_t *
prof_tdata_mutex_choose(uint64_t thr_uid) {
 return &tdata_locks[thr_uid % PROF_NTDATA_LOCKS];
}
