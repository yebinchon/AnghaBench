
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zc_cookie; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;


 int EEXIST ;
 int SET_ERROR (int ) ;
 int nvlist_free (int *) ;
 int put_nvlist (TYPE_1__*,int *) ;
 int * spa_all_configs (int *) ;

__attribute__((used)) static int
zfs_ioc_pool_configs(zfs_cmd_t *zc)
{
 nvlist_t *configs;
 int error;

 if ((configs = spa_all_configs(&zc->zc_cookie)) == ((void*)0))
  return (SET_ERROR(EEXIST));

 error = put_nvlist(zc, configs);

 nvlist_free(configs);

 return (error);
}
