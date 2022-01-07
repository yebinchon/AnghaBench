
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int PAGESIZE ;
 int physmem ;
 scalar_t__ spa_log_sm_memused (int *) ;
 scalar_t__ zfs_unflushed_max_mem_amt ;
 int zfs_unflushed_max_mem_ppm ;

__attribute__((used)) static boolean_t
spa_log_exceeds_memlimit(spa_t *spa)
{
 if (spa_log_sm_memused(spa) > zfs_unflushed_max_mem_amt)
  return (B_TRUE);

 uint64_t system_mem_allowed = ((physmem * PAGESIZE) *
     zfs_unflushed_max_mem_ppm) / 1000000;
 if (spa_log_sm_memused(spa) > system_mem_allowed)
  return (B_TRUE);

 return (B_FALSE);
}
