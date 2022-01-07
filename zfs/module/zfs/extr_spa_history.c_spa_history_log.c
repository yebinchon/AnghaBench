
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int nvlist_t ;


 int ZPOOL_HIST_CMD ;
 int fnvlist_add_string (int *,int ,char const*) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int spa_history_log_nvl (int *,int *) ;

int
spa_history_log(spa_t *spa, const char *msg)
{
 int err;
 nvlist_t *nvl = fnvlist_alloc();

 fnvlist_add_string(nvl, ZPOOL_HIST_CMD, msg);
 err = spa_history_log_nvl(spa, nvl);
 fnvlist_free(nvl);
 return (err);
}
