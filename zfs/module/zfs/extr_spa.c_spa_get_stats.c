
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_14__ {int tv_nsec; int tv_sec; } ;
struct TYPE_15__ {int spa_suspended; int spa_failmode; TYPE_1__ spa_loaded_ts; } ;
typedef TYPE_2__ spa_t ;
typedef int nvlist_t ;


 int FTAG ;
 int RW_READER ;
 int SCL_CONFIG ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_ERRCOUNT ;
 int ZPOOL_CONFIG_LOADED_TIME ;
 int ZPOOL_CONFIG_SUSPENDED ;
 int ZPOOL_CONFIG_SUSPENDED_REASON ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int ) ;
 scalar_t__ nvlist_add_uint64_array (int *,int ,int *,int) ;
 int spa_add_feature_stats (TYPE_2__*,int *) ;
 int spa_add_l2cache (TYPE_2__*,int *) ;
 int spa_add_spares (TYPE_2__*,int *) ;
 int spa_altroot (TYPE_2__*,char*,size_t) ;
 int spa_close (TYPE_2__*,int ) ;
 int spa_config_enter (TYPE_2__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_2__*,int ,int ) ;
 int spa_get_errlog_size (TYPE_2__*) ;
 TYPE_2__* spa_lookup (char const*) ;
 int spa_namespace_lock ;
 int spa_open_common (char const*,TYPE_2__**,int ,int *,int **) ;
 scalar_t__ spa_suspended (TYPE_2__*) ;

int
spa_get_stats(const char *name, nvlist_t **config,
    char *altroot, size_t buflen)
{
 int error;
 spa_t *spa;

 *config = ((void*)0);
 error = spa_open_common(name, &spa, FTAG, ((void*)0), config);

 if (spa != ((void*)0)) {





  spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);

  if (*config != ((void*)0)) {
   uint64_t loadtimes[2];

   loadtimes[0] = spa->spa_loaded_ts.tv_sec;
   loadtimes[1] = spa->spa_loaded_ts.tv_nsec;
   VERIFY(nvlist_add_uint64_array(*config,
       ZPOOL_CONFIG_LOADED_TIME, loadtimes, 2) == 0);

   VERIFY(nvlist_add_uint64(*config,
       ZPOOL_CONFIG_ERRCOUNT,
       spa_get_errlog_size(spa)) == 0);

   if (spa_suspended(spa)) {
    VERIFY(nvlist_add_uint64(*config,
        ZPOOL_CONFIG_SUSPENDED,
        spa->spa_failmode) == 0);
    VERIFY(nvlist_add_uint64(*config,
        ZPOOL_CONFIG_SUSPENDED_REASON,
        spa->spa_suspended) == 0);
   }

   spa_add_spares(spa, *config);
   spa_add_l2cache(spa, *config);
   spa_add_feature_stats(spa, *config);
  }
 }





 if (altroot) {
  if (spa == ((void*)0)) {
   mutex_enter(&spa_namespace_lock);
   spa = spa_lookup(name);
   if (spa)
    spa_altroot(spa, altroot, buflen);
   else
    altroot[0] = '\0';
   spa = ((void*)0);
   mutex_exit(&spa_namespace_lock);
  } else {
   spa_altroot(spa, altroot, buflen);
  }
 }

 if (spa != ((void*)0)) {
  spa_config_exit(spa, SCL_CONFIG, FTAG);
  spa_close(spa, FTAG);
 }

 return (error);
}
