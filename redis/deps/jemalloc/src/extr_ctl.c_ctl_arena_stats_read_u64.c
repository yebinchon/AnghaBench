
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int arena_stats_u64_t ;


 int ATOMIC_RELAXED ;
 int atomic_load_u64 (int *,int ) ;

__attribute__((used)) static uint64_t
ctl_arena_stats_read_u64(arena_stats_u64_t *p) {



 return *p;

}
