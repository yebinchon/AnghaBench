
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sav_count; int * sav_vdevs; } ;
typedef TYPE_1__ spa_aux_vdev_t ;


 int spa_check_removed (int ) ;

__attribute__((used)) static void
spa_aux_check_removed(spa_aux_vdev_t *sav)
{
 for (int i = 0; i < sav->sav_count; i++)
  spa_check_removed(sav->sav_vdevs[i]);
}
