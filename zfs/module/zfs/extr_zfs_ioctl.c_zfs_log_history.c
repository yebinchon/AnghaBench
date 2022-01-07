
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int spa_t ;


 int FTAG ;
 scalar_t__ SPA_VERSION_ZPOOL_HISTORY ;
 int history_str_free (char*) ;
 char* history_str_get (TYPE_1__*) ;
 int spa_close (int *,int ) ;
 int spa_history_log (int *,char*) ;
 scalar_t__ spa_open (int ,int **,int ) ;
 scalar_t__ spa_version (int *) ;

__attribute__((used)) static void
zfs_log_history(zfs_cmd_t *zc)
{
 spa_t *spa;
 char *buf;

 if ((buf = history_str_get(zc)) == ((void*)0))
  return;

 if (spa_open(zc->zc_name, &spa, FTAG) == 0) {
  if (spa_version(spa) >= SPA_VERSION_ZPOOL_HISTORY)
   (void) spa_history_log(spa, buf);
  spa_close(spa, FTAG);
 }
 history_str_free(buf);
}
