
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zc_cookie; int zc_value; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;


 int nvlist_free (int *) ;
 int put_nvlist (TYPE_1__*,int *) ;
 int spa_get_stats (int ,int **,int ,int) ;

__attribute__((used)) static int
zfs_ioc_pool_stats(zfs_cmd_t *zc)
{
 nvlist_t *config;
 int error;
 int ret = 0;

 error = spa_get_stats(zc->zc_name, &config, zc->zc_value,
     sizeof (zc->zc_value));

 if (config != ((void*)0)) {
  ret = put_nvlist(zc, config);
  nvlist_free(config);






  zc->zc_cookie = error;
 } else {
  ret = error;
 }

 return (ret);
}
