
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int procfs_list; } ;
typedef TYPE_1__ spa_history_list_t ;


 int kmem_free (TYPE_1__*,int) ;
 int procfs_list_destroy (int *) ;
 int procfs_list_uninstall (int *) ;
 TYPE_1__* spa_import_progress_list ;
 int spa_import_progress_truncate (TYPE_1__*,int ) ;

__attribute__((used)) static void
spa_import_progress_destroy(void)
{
 spa_history_list_t *shl = spa_import_progress_list;
 procfs_list_uninstall(&shl->procfs_list);
 spa_import_progress_truncate(shl, 0);
 procfs_list_destroy(&shl->procfs_list);
 kmem_free(shl, sizeof (spa_history_list_t));
}
