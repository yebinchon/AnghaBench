
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ vdev_mmp_pending; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_12__ {scalar_t__ mmp_leaf_last_gen; TYPE_2__* mmp_last_leaf; int mmp_io_lock; } ;
struct TYPE_15__ {int list_head; } ;
struct TYPE_14__ {scalar_t__ spa_leaf_list_gen; TYPE_1__ spa_mmp; TYPE_8__ spa_leaf_list; } ;
typedef TYPE_3__ spa_t ;


 int ASSERT (int) ;
 scalar_t__ B_TRUE ;
 int MMP_FAIL_NOT_WRITABLE ;
 int MMP_FAIL_WRITE_PENDING ;
 int MUTEX_HELD (int *) ;
 int RW_READER ;
 int SCL_STATE ;
 void* list_head (TYPE_8__*) ;
 int list_is_empty (TYPE_8__*) ;
 scalar_t__ list_link_active (int *) ;
 TYPE_2__* list_next (TYPE_8__*,TYPE_2__*) ;
 int spa_config_held (TYPE_3__*,int ,int ) ;
 int vdev_writeable (TYPE_2__*) ;

__attribute__((used)) static int
mmp_next_leaf(spa_t *spa)
{
 vdev_t *leaf;
 vdev_t *starting_leaf;
 int fail_mask = 0;

 ASSERT(MUTEX_HELD(&spa->spa_mmp.mmp_io_lock));
 ASSERT(spa_config_held(spa, SCL_STATE, RW_READER));
 ASSERT(list_link_active(&spa->spa_leaf_list.list_head) == B_TRUE);
 ASSERT(!list_is_empty(&spa->spa_leaf_list));

 if (spa->spa_mmp.mmp_leaf_last_gen != spa->spa_leaf_list_gen) {
  spa->spa_mmp.mmp_last_leaf = list_head(&spa->spa_leaf_list);
  spa->spa_mmp.mmp_leaf_last_gen = spa->spa_leaf_list_gen;
 }

 leaf = spa->spa_mmp.mmp_last_leaf;
 if (leaf == ((void*)0))
  leaf = list_head(&spa->spa_leaf_list);
 starting_leaf = leaf;

 do {
  leaf = list_next(&spa->spa_leaf_list, leaf);
  if (leaf == ((void*)0))
   leaf = list_head(&spa->spa_leaf_list);

  if (!vdev_writeable(leaf)) {
   fail_mask |= MMP_FAIL_NOT_WRITABLE;
  } else if (leaf->vdev_mmp_pending != 0) {
   fail_mask |= MMP_FAIL_WRITE_PENDING;
  } else {
   spa->spa_mmp.mmp_last_leaf = leaf;
   return (0);
  }
 } while (leaf != starting_leaf);

 ASSERT(fail_mask);

 return (fail_mask);
}
