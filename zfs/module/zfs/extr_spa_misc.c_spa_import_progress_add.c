
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int spa_config; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_13__ {int spa_load_state; int pool_name; int pool_guid; } ;
typedef TYPE_2__ spa_import_progress_t ;
struct TYPE_15__ {int pl_lock; } ;
struct TYPE_14__ {TYPE_9__ procfs_list; int size; } ;
typedef TYPE_3__ spa_history_list_t ;


 int KM_SLEEP ;
 int ZPOOL_CONFIG_POOL_NAME ;
 TYPE_2__* kmem_zalloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int nvlist_lookup_string (int ,int ,char**) ;
 int procfs_list_add (TYPE_9__*,TYPE_2__*) ;
 int spa_guid (TYPE_1__*) ;
 TYPE_3__* spa_import_progress_list ;
 int spa_load_state (TYPE_1__*) ;
 char* spa_name (TYPE_1__*) ;
 int spa_strdup (char*) ;

void
spa_import_progress_add(spa_t *spa)
{
 spa_history_list_t *shl = spa_import_progress_list;
 spa_import_progress_t *sip;
 char *poolname = ((void*)0);

 sip = kmem_zalloc(sizeof (spa_import_progress_t), KM_SLEEP);
 sip->pool_guid = spa_guid(spa);

 (void) nvlist_lookup_string(spa->spa_config, ZPOOL_CONFIG_POOL_NAME,
     &poolname);
 if (poolname == ((void*)0))
  poolname = spa_name(spa);
 sip->pool_name = spa_strdup(poolname);
 sip->spa_load_state = spa_load_state(spa);

 mutex_enter(&shl->procfs_list.pl_lock);
 procfs_list_add(&shl->procfs_list, sip);
 shl->size++;
 mutex_exit(&shl->procfs_list.pl_lock);
}
