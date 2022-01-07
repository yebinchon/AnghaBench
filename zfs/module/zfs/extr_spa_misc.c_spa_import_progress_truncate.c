
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pool_name; } ;
typedef TYPE_2__ spa_import_progress_t ;
struct TYPE_7__ {int pl_list; } ;
struct TYPE_9__ {unsigned int size; TYPE_1__ procfs_list; } ;
typedef TYPE_3__ spa_history_list_t ;


 int IMPLY (int,int ) ;
 int kmem_free (TYPE_2__*,int) ;
 int list_is_empty (int *) ;
 TYPE_2__* list_remove_head (int *) ;
 int spa_strfree (scalar_t__) ;

__attribute__((used)) static void
spa_import_progress_truncate(spa_history_list_t *shl, unsigned int size)
{
 spa_import_progress_t *sip;
 while (shl->size > size) {
  sip = list_remove_head(&shl->procfs_list.pl_list);
  if (sip->pool_name)
   spa_strfree(sip->pool_name);
  kmem_free(sip, sizeof (spa_import_progress_t));
  shl->size--;
 }

 IMPLY(size == 0, list_is_empty(&shl->procfs_list.pl_list));
}
