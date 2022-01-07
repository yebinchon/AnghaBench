
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * spa_livelist_condense_zthr; int * spa_livelist_delete_zthr; int * spa_checkpoint_discard_zthr; int * spa_condense_zthr; } ;
typedef TYPE_1__ spa_t ;


 int zthr_destroy (int *) ;

__attribute__((used)) static void
spa_destroy_aux_threads(spa_t *spa)
{
 if (spa->spa_condense_zthr != ((void*)0)) {
  zthr_destroy(spa->spa_condense_zthr);
  spa->spa_condense_zthr = ((void*)0);
 }
 if (spa->spa_checkpoint_discard_zthr != ((void*)0)) {
  zthr_destroy(spa->spa_checkpoint_discard_zthr);
  spa->spa_checkpoint_discard_zthr = ((void*)0);
 }
 if (spa->spa_livelist_delete_zthr != ((void*)0)) {
  zthr_destroy(spa->spa_livelist_delete_zthr);
  spa->spa_livelist_delete_zthr = ((void*)0);
 }
 if (spa->spa_livelist_condense_zthr != ((void*)0)) {
  zthr_destroy(spa->spa_livelist_condense_zthr);
  spa->spa_livelist_condense_zthr = ((void*)0);
 }
}
