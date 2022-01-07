
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_kernel_param_t ;
struct TYPE_4__ {int spa_deadman_ziotime; } ;
typedef TYPE_1__ spa_t ;


 int MSEC2NSEC (int ) ;
 int SET_ERROR (int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int param_set_ulong (char const*,int *) ;
 scalar_t__ spa_mode_global ;
 int spa_namespace_lock ;
 TYPE_1__* spa_next (TYPE_1__*) ;
 int zfs_deadman_ziotime_ms ;

int
param_set_deadman_ziotime(const char *val, zfs_kernel_param_t *kp)
{
 spa_t *spa = ((void*)0);
 int error;

 error = param_set_ulong(val, kp);
 if (error < 0)
  return (SET_ERROR(error));

 if (spa_mode_global != 0) {
  mutex_enter(&spa_namespace_lock);
  while ((spa = spa_next(spa)) != ((void*)0))
   spa->spa_deadman_ziotime =
       MSEC2NSEC(zfs_deadman_ziotime_ms);
  mutex_exit(&spa_namespace_lock);
 }

 return (0);
}
