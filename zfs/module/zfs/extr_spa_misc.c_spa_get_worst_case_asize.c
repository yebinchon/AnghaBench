
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int spa_max_ashift; } ;
typedef TYPE_1__ spa_t ;


 scalar_t__ MAX (scalar_t__,int) ;
 scalar_t__ spa_asize_inflation ;

uint64_t
spa_get_worst_case_asize(spa_t *spa, uint64_t lsize)
{
 if (lsize == 0)
  return (0);
 return (MAX(lsize, 1 << spa->spa_max_ashift) * spa_asize_inflation);
}
