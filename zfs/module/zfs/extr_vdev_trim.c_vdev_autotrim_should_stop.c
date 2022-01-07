
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_spa; scalar_t__ vdev_removing; scalar_t__ vdev_autotrim_exit_wanted; } ;
typedef TYPE_1__ vdev_t ;
typedef int boolean_t ;


 scalar_t__ SPA_AUTOTRIM_OFF ;
 scalar_t__ spa_get_autotrim (int ) ;
 int vdev_writeable (TYPE_1__*) ;

__attribute__((used)) static boolean_t
vdev_autotrim_should_stop(vdev_t *tvd)
{
 return (tvd->vdev_autotrim_exit_wanted ||
     !vdev_writeable(tvd) || tvd->vdev_removing ||
     spa_get_autotrim(tvd->vdev_spa) == SPA_AUTOTRIM_OFF);
}
