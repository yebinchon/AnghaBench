
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int spa_history_list_t ;
struct TYPE_5__ {TYPE_1__* pl_private; } ;
struct TYPE_4__ {TYPE_2__ procfs_list; scalar_t__ size; } ;


 int KM_SLEEP ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int offsetof (int ,int ) ;
 int procfs_list_install (char*,char*,int,TYPE_2__*,int ,int ,int *,int ) ;
 int smh_node ;
 TYPE_1__* spa_import_progress_list ;
 int spa_import_progress_show ;
 int spa_import_progress_show_header ;
 int spa_import_progress_t ;

__attribute__((used)) static void
spa_import_progress_init(void)
{
 spa_import_progress_list = kmem_zalloc(sizeof (spa_history_list_t),
     KM_SLEEP);

 spa_import_progress_list->size = 0;

 spa_import_progress_list->procfs_list.pl_private =
     spa_import_progress_list;

 procfs_list_install("zfs",
     "import_progress",
     0644,
     &spa_import_progress_list->procfs_list,
     spa_import_progress_show,
     spa_import_progress_show_header,
     ((void*)0),
     offsetof(spa_import_progress_t, smh_node));
}
