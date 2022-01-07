
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_list_t ;
typedef int uint64_t ;


 int B_FALSE ;
 int get_stat_flags_cb ;
 int pool_list_iter (int *,int ,int ,int*) ;

__attribute__((used)) static uint64_t
get_stat_flags(zpool_list_t *list)
{
 uint64_t mask = -1;





 pool_list_iter(list, B_FALSE, get_stat_flags_cb, &mask);
 return (mask);
}
