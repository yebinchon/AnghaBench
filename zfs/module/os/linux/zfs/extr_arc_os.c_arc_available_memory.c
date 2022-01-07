
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int free_memory_reason_t ;


 int FMR_UNKNOWN ;
 int INT64_MAX ;
 int last_free_memory ;
 int last_free_reason ;
 scalar_t__ spa_get_random (int) ;

int64_t
arc_available_memory(void)
{
 int64_t lowest = INT64_MAX;
 free_memory_reason_t r = FMR_UNKNOWN;


 if (spa_get_random(100) == 0)
  lowest = -1024;

 last_free_memory = lowest;
 last_free_reason = r;

 return (lowest);
}
