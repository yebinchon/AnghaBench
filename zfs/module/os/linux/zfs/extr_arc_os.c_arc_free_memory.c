
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int arc_all_memory () ;
 int spa_get_random (int) ;

uint64_t
arc_free_memory(void)
{
 return (spa_get_random(arc_all_memory() * 20 / 100));
}
