
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int vdev_cant_read; struct TYPE_8__* vdev_top; TYPE_2__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint8_t ;
struct TYPE_9__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int DTL_OUTAGE ;
 int ECHILD ;
 int RW_WRITER ;
 scalar_t__ SCL_STATE_ALL ;
 scalar_t__ spa_config_held (TYPE_2__*,scalar_t__,int ) ;
 int vdev_dtl_empty (TYPE_1__*,int ) ;
 int vdev_dtl_reassess (TYPE_1__*,int ,int ,int ) ;
 int zio_handle_device_injection (TYPE_1__*,int *,int ) ;
 scalar_t__ zio_injection_enabled ;

boolean_t
vdev_dtl_required(vdev_t *vd)
{
 spa_t *spa = vd->vdev_spa;
 vdev_t *tvd = vd->vdev_top;
 uint8_t cant_read = vd->vdev_cant_read;
 boolean_t required;

 ASSERT(spa_config_held(spa, SCL_STATE_ALL, RW_WRITER) == SCL_STATE_ALL);

 if (vd == spa->spa_root_vdev || vd == tvd)
  return (B_TRUE);






 vd->vdev_cant_read = B_TRUE;
 vdev_dtl_reassess(tvd, 0, 0, B_FALSE);
 required = !vdev_dtl_empty(tvd, DTL_OUTAGE);
 vd->vdev_cant_read = cant_read;
 vdev_dtl_reassess(tvd, 0, 0, B_FALSE);

 if (!required && zio_injection_enabled)
  required = !!zio_handle_device_injection(vd, ((void*)0), ECHILD);

 return (required);
}
