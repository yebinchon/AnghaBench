
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int witness_rank_t ;
struct TYPE_3__ {int * mutexes; } ;
typedef TYPE_1__ mutex_pool_t ;


 int MUTEX_POOL_SIZE ;
 int malloc_mutex_address_ordered ;
 scalar_t__ malloc_mutex_init (int *,char const*,int ,int ) ;

bool
mutex_pool_init(mutex_pool_t *pool, const char *name, witness_rank_t rank) {
 for (int i = 0; i < MUTEX_POOL_SIZE; ++i) {
  if (malloc_mutex_init(&pool->mutexes[i], name, rank,
      malloc_mutex_address_ordered)) {
   return 1;
  }
 }
 return 0;
}
