
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int machine; int version; int release; int nodename; } ;
typedef TYPE_1__ utsname_t ;
typedef int u_longlong_t ;
typedef int spa_t ;
typedef int dmu_tx_t ;


 int ZFS_META_GITREV ;
 int spa_history_log_internal (int *,char const*,int *,char*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ spa_version (int *) ;
 TYPE_1__* utsname () ;

void
spa_history_log_version(spa_t *spa, const char *operation, dmu_tx_t *tx)
{
 utsname_t *u = utsname();

 spa_history_log_internal(spa, operation, tx,
     "pool version %llu; software version %s; uts %s %s %s %s",
     (u_longlong_t)spa_version(spa), ZFS_META_GITREV,
     u->nodename, u->release, u->version, u->machine);
}
