
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * spa_condensing_indirect; } ;
typedef TYPE_1__ spa_t ;


 int spa_condensing_indirect_destroy (int *) ;

void
spa_condense_fini(spa_t *spa)
{
 if (spa->spa_condensing_indirect != ((void*)0)) {
  spa_condensing_indirect_destroy(spa->spa_condensing_indirect);
  spa->spa_condensing_indirect = ((void*)0);
 }
}
