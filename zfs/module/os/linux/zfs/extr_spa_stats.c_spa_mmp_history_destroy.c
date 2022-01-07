
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int procfs_list; } ;
struct TYPE_6__ {TYPE_3__ mmp_history; } ;
struct TYPE_7__ {TYPE_1__ spa_stats; } ;
typedef TYPE_2__ spa_t ;
typedef TYPE_3__ spa_history_list_t ;


 int procfs_list_destroy (int *) ;
 int procfs_list_uninstall (int *) ;
 int spa_mmp_history_truncate (TYPE_3__*,int ) ;

__attribute__((used)) static void
spa_mmp_history_destroy(spa_t *spa)
{
 spa_history_list_t *shl = &spa->spa_stats.mmp_history;
 procfs_list_uninstall(&shl->procfs_list);
 spa_mmp_history_truncate(shl, 0);
 procfs_list_destroy(&shl->procfs_list);
}
