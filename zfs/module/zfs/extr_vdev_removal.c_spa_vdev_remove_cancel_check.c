
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * spa_vdev_removal; } ;
typedef TYPE_1__ spa_t ;
typedef int dmu_tx_t ;
struct TYPE_4__ {TYPE_1__* dp_spa; } ;


 int ENOTACTIVE ;
 TYPE_2__* dmu_tx_pool (int *) ;

__attribute__((used)) static int
spa_vdev_remove_cancel_check(void *arg, dmu_tx_t *tx)
{
 spa_t *spa = dmu_tx_pool(tx)->dp_spa;

 if (spa->spa_vdev_removal == ((void*)0))
  return (ENOTACTIVE);
 return (0);
}
