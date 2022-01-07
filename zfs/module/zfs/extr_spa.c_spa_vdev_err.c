
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_t ;
typedef int vdev_aux_t ;


 int B_TRUE ;
 int SET_ERROR (int) ;
 int VDEV_STATE_CANT_OPEN ;
 int vdev_set_state (int *,int ,int ,int ) ;

__attribute__((used)) static int
spa_vdev_err(vdev_t *vdev, vdev_aux_t aux, int err)
{
 vdev_set_state(vdev, B_TRUE, VDEV_STATE_CANT_OPEN, aux);
 return (SET_ERROR(err));
}
