
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ vdev_trim_state; int vdev_trim_lock; TYPE_2__* vdev_top; int * vdev_trim_thread; int vdev_has_securetrim; int vdev_has_trim; TYPE_1__* vdev_ops; scalar_t__ vdev_detached; } ;
typedef TYPE_3__ vdev_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int list_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_10__ {scalar_t__ vdev_removing; } ;
struct TYPE_9__ {int vdev_op_leaf; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int EROFS ;
 int ESRCH ;
 int FTAG ;
 int MUTEX_HELD (int *) ;



 int RW_READER ;
 int SCL_CONFIG ;
 int SCL_STATE ;
 int SET_ERROR (int ) ;
 scalar_t__ VDEV_TRIM_ACTIVE ;
 scalar_t__ VDEV_TRIM_CANCELED ;
 scalar_t__ VDEV_TRIM_SUSPENDED ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int panic (char*,unsigned long long) ;
 int spa_config_enter (int *,int,int ,int ) ;
 int spa_config_exit (int *,int,int ) ;
 TYPE_3__* spa_lookup_by_guid (int *,int,int ) ;
 int spa_namespace_lock ;
 int vdev_is_concrete (TYPE_3__*) ;
 int vdev_trim (TYPE_3__*,int,scalar_t__,scalar_t__) ;
 int vdev_trim_stop (TYPE_3__*,scalar_t__,int *) ;
 int vdev_writeable (TYPE_3__*) ;

__attribute__((used)) static int
spa_vdev_trim_impl(spa_t *spa, uint64_t guid, uint64_t cmd_type,
    uint64_t rate, boolean_t partial, boolean_t secure, list_t *vd_list)
{
 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 spa_config_enter(spa, SCL_CONFIG | SCL_STATE, FTAG, RW_READER);


 vdev_t *vd = spa_lookup_by_guid(spa, guid, B_FALSE);
 if (vd == ((void*)0) || vd->vdev_detached) {
  spa_config_exit(spa, SCL_CONFIG | SCL_STATE, FTAG);
  return (SET_ERROR(ENODEV));
 } else if (!vd->vdev_ops->vdev_op_leaf || !vdev_is_concrete(vd)) {
  spa_config_exit(spa, SCL_CONFIG | SCL_STATE, FTAG);
  return (SET_ERROR(EINVAL));
 } else if (!vdev_writeable(vd)) {
  spa_config_exit(spa, SCL_CONFIG | SCL_STATE, FTAG);
  return (SET_ERROR(EROFS));
 } else if (!vd->vdev_has_trim) {
  spa_config_exit(spa, SCL_CONFIG | SCL_STATE, FTAG);
  return (SET_ERROR(EOPNOTSUPP));
 } else if (secure && !vd->vdev_has_securetrim) {
  spa_config_exit(spa, SCL_CONFIG | SCL_STATE, FTAG);
  return (SET_ERROR(EOPNOTSUPP));
 }
 mutex_enter(&vd->vdev_trim_lock);
 spa_config_exit(spa, SCL_CONFIG | SCL_STATE, FTAG);







 if (cmd_type == 129 &&
     (vd->vdev_trim_thread != ((void*)0) || vd->vdev_top->vdev_removing)) {
  mutex_exit(&vd->vdev_trim_lock);
  return (SET_ERROR(EBUSY));
 } else if (cmd_type == 130 &&
     (vd->vdev_trim_state != VDEV_TRIM_ACTIVE &&
     vd->vdev_trim_state != VDEV_TRIM_SUSPENDED)) {
  mutex_exit(&vd->vdev_trim_lock);
  return (SET_ERROR(ESRCH));
 } else if (cmd_type == 128 &&
     vd->vdev_trim_state != VDEV_TRIM_ACTIVE) {
  mutex_exit(&vd->vdev_trim_lock);
  return (SET_ERROR(ESRCH));
 }

 switch (cmd_type) {
 case 129:
  vdev_trim(vd, rate, partial, secure);
  break;
 case 130:
  vdev_trim_stop(vd, VDEV_TRIM_CANCELED, vd_list);
  break;
 case 128:
  vdev_trim_stop(vd, VDEV_TRIM_SUSPENDED, vd_list);
  break;
 default:
  panic("invalid cmd_type %llu", (unsigned long long)cmd_type);
 }
 mutex_exit(&vd->vdev_trim_lock);

 return (0);
}
