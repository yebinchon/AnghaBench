
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdev_t ;
struct TYPE_4__ {int spa_is_initializing; int spa_dsl_pool; int * spa_root_vdev; } ;
typedef TYPE_1__ spa_t ;


 int B_FALSE ;
 int B_TRUE ;
 int EIO ;
 int VDEV_AUX_CORRUPT_DATA ;
 int dsl_pool_open (int ) ;
 int spa_load_failed (TYPE_1__*,char*,int) ;
 int spa_vdev_err (int *,int ,int ) ;

__attribute__((used)) static int
spa_ld_load_special_directories(spa_t *spa)
{
 int error = 0;
 vdev_t *rvd = spa->spa_root_vdev;

 spa->spa_is_initializing = B_TRUE;
 error = dsl_pool_open(spa->spa_dsl_pool);
 spa->spa_is_initializing = B_FALSE;
 if (error != 0) {
  spa_load_failed(spa, "dsl_pool_open failed [error=%d]", error);
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
 }

 return (0);
}
