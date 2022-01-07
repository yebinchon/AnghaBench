
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vdev_t ;
struct TYPE_6__ {TYPE_5__* spa_dsl_pool; int spa_meta_objset; int spa_first_txg; int * spa_root_vdev; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_7__ {int dp_meta_objset; } ;


 int EIO ;
 int VDEV_AUX_CORRUPT_DATA ;
 int dsl_pool_init (TYPE_1__*,int ,TYPE_5__**) ;
 int spa_load_failed (TYPE_1__*,char*,int) ;
 int spa_vdev_err (int *,int ,int ) ;

__attribute__((used)) static int
spa_ld_open_rootbp(spa_t *spa)
{
 int error = 0;
 vdev_t *rvd = spa->spa_root_vdev;

 error = dsl_pool_init(spa, spa->spa_first_txg, &spa->spa_dsl_pool);
 if (error != 0) {
  spa_load_failed(spa, "unable to open rootbp in dsl_pool_init "
      "[error=%d]", error);
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
 }
 spa->spa_meta_objset = spa->spa_dsl_pool->dp_meta_objset;

 return (0);
}
