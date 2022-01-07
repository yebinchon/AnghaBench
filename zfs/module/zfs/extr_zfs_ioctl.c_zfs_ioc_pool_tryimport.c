
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zc_iflags; int zc_nvlist_conf_size; int zc_nvlist_conf; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 int get_nvlist (int ,int ,int ,int **) ;
 int nvlist_free (int *) ;
 int put_nvlist (TYPE_1__*,int *) ;
 int * spa_tryimport (int *) ;

__attribute__((used)) static int
zfs_ioc_pool_tryimport(zfs_cmd_t *zc)
{
 nvlist_t *tryconfig, *config = ((void*)0);
 int error;

 if ((error = get_nvlist(zc->zc_nvlist_conf, zc->zc_nvlist_conf_size,
     zc->zc_iflags, &tryconfig)) != 0)
  return (error);

 config = spa_tryimport(tryconfig);

 nvlist_free(tryconfig);

 if (config == ((void*)0))
  return (SET_ERROR(EINVAL));

 error = put_nvlist(zc, config);
 nvlist_free(config);

 return (error);
}
