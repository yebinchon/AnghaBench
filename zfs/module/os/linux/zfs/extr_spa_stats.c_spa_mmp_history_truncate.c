
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ vdev_path; } ;
typedef TYPE_2__ spa_mmp_history_t ;
struct TYPE_7__ {int pl_list; } ;
struct TYPE_9__ {unsigned int size; TYPE_1__ procfs_list; } ;
typedef TYPE_3__ spa_history_list_t ;


 int ASSERT (int ) ;
 int kmem_free (TYPE_2__*,int) ;
 int kmem_strfree (scalar_t__) ;
 int list_is_empty (int *) ;
 TYPE_2__* list_remove_head (int *) ;

__attribute__((used)) static void
spa_mmp_history_truncate(spa_history_list_t *shl, unsigned int size)
{
 spa_mmp_history_t *smh;
 while (shl->size > size) {
  smh = list_remove_head(&shl->procfs_list.pl_list);
  if (smh->vdev_path)
   kmem_strfree(smh->vdev_path);
  kmem_free(smh, sizeof (spa_mmp_history_t));
  shl->size--;
 }

 if (size == 0)
  ASSERT(list_is_empty(&shl->procfs_list.pl_list));

}
