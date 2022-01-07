
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vdev_t ;
typedef size_t uint64_t ;
struct TYPE_10__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_9__ {size_t vdev_children; int ** vdev_child; } ;


 int FTAG ;
 int RW_READER ;
 int SCL_CONFIG ;
 int spa_config_enter (TYPE_2__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_2__*,int ,int ) ;
 int spa_ld_log_sm_data (TYPE_2__*) ;
 int spa_ld_log_sm_metadata (TYPE_2__*) ;
 int spa_ld_unflushed_txgs (int *) ;
 int spa_log_sm_set_blocklimit (TYPE_2__*) ;

int
spa_ld_log_spacemaps(spa_t *spa)
{
 int error;

 spa_log_sm_set_blocklimit(spa);

 for (uint64_t c = 0; c < spa->spa_root_vdev->vdev_children; c++) {
  vdev_t *vd = spa->spa_root_vdev->vdev_child[c];
  error = spa_ld_unflushed_txgs(vd);
  if (error != 0)
   return (error);
 }

 error = spa_ld_log_sm_metadata(spa);
 if (error != 0)
  return (error);






 spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);
 error = spa_ld_log_sm_data(spa);
 spa_config_exit(spa, SCL_CONFIG, FTAG);

 return (error);
}
