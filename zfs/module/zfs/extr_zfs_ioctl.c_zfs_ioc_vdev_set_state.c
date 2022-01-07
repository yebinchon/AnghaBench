
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* zc_obj; int zc_cookie; int zc_guid; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int vdev_state_t ;
typedef int spa_t ;


 int EINVAL ;
 int FTAG ;
 int SET_ERROR (int ) ;
 void* VDEV_AUX_ERR_EXCEEDED ;
 void* VDEV_AUX_EXTERNAL ;
 void* VDEV_AUX_EXTERNAL_PERSIST ;




 int VDEV_STATE_UNKNOWN ;
 int spa_close (int *,int ) ;
 int spa_open (int ,int **,int ) ;
 int vdev_degrade (int *,int ,void*) ;
 int vdev_fault (int *,int ,void*) ;
 int vdev_offline (int *,int ,void*) ;
 int vdev_online (int *,int ,void*,int *) ;

__attribute__((used)) static int
zfs_ioc_vdev_set_state(zfs_cmd_t *zc)
{
 spa_t *spa;
 int error;
 vdev_state_t newstate = VDEV_STATE_UNKNOWN;

 if ((error = spa_open(zc->zc_name, &spa, FTAG)) != 0)
  return (error);
 switch (zc->zc_cookie) {
 case 128:
  error = vdev_online(spa, zc->zc_guid, zc->zc_obj, &newstate);
  break;

 case 129:
  error = vdev_offline(spa, zc->zc_guid, zc->zc_obj);
  break;

 case 130:
  if (zc->zc_obj != VDEV_AUX_ERR_EXCEEDED &&
      zc->zc_obj != VDEV_AUX_EXTERNAL &&
      zc->zc_obj != VDEV_AUX_EXTERNAL_PERSIST)
   zc->zc_obj = VDEV_AUX_ERR_EXCEEDED;

  error = vdev_fault(spa, zc->zc_guid, zc->zc_obj);
  break;

 case 131:
  if (zc->zc_obj != VDEV_AUX_ERR_EXCEEDED &&
      zc->zc_obj != VDEV_AUX_EXTERNAL)
   zc->zc_obj = VDEV_AUX_ERR_EXCEEDED;

  error = vdev_degrade(spa, zc->zc_guid, zc->zc_obj);
  break;

 default:
  error = SET_ERROR(EINVAL);
 }
 zc->zc_cookie = newstate;
 spa_close(spa, FTAG);
 return (error);
}
