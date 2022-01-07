
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int spa_vdev_top_lock; } ;
typedef TYPE_1__ spa_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int vdev_offline_locked (TYPE_1__*,int ,int ) ;

int
vdev_offline(spa_t *spa, uint64_t guid, uint64_t flags)
{
 int error;

 mutex_enter(&spa->spa_vdev_top_lock);
 error = vdev_offline_locked(spa, guid, flags);
 mutex_exit(&spa->spa_vdev_top_lock);

 return (error);
}
