
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_3__ {scalar_t__ accumbytes; int mtx; } ;
typedef TYPE_1__ prof_accum_t ;


 int ATOMIC_RELAXED ;
 int WITNESS_RANK_PROF_ACCUM ;
 int atomic_store_u64 (scalar_t__*,int ,int ) ;
 int cassert (int ) ;
 int config_prof ;
 scalar_t__ malloc_mutex_init (int *,char*,int ,int ) ;
 int malloc_mutex_rank_exclusive ;

bool
prof_accum_init(tsdn_t *tsdn, prof_accum_t *prof_accum) {
 cassert(config_prof);


 if (malloc_mutex_init(&prof_accum->mtx, "prof_accum",
     WITNESS_RANK_PROF_ACCUM, malloc_mutex_rank_exclusive)) {
  return 1;
 }
 prof_accum->accumbytes = 0;



 return 0;
}
