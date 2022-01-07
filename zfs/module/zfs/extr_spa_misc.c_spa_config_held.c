
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* spa_config_lock; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_5__ {scalar_t__ scl_writer; int scl_count; } ;
typedef TYPE_2__ spa_config_lock_t ;
typedef scalar_t__ krw_t ;


 scalar_t__ RW_READER ;
 scalar_t__ RW_WRITER ;
 int SCL_LOCKS ;
 scalar_t__ curthread ;
 int zfs_refcount_is_zero (int *) ;

int
spa_config_held(spa_t *spa, int locks, krw_t rw)
{
 int locks_held = 0;

 for (int i = 0; i < SCL_LOCKS; i++) {
  spa_config_lock_t *scl = &spa->spa_config_lock[i];
  if (!(locks & (1 << i)))
   continue;
  if ((rw == RW_READER &&
      !zfs_refcount_is_zero(&scl->scl_count)) ||
      (rw == RW_WRITER && scl->scl_writer == curthread))
   locks_held |= 1 << i;
 }

 return (locks_held);
}
