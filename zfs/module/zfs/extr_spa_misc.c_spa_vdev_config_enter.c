
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int spa_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int RW_WRITER ;
 int SCL_ALL ;
 int spa_config_enter (int *,int ,int *,int ) ;
 scalar_t__ spa_last_synced_txg (int *) ;
 int spa_namespace_lock ;

uint64_t
spa_vdev_config_enter(spa_t *spa)
{
 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 spa_config_enter(spa, SCL_ALL, spa, RW_WRITER);

 return (spa_last_synced_txg(spa) + 1);
}
