
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zc_nvlist_dst; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int spa_t ;
typedef int nvlist_t ;


 int EFAULT ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int nvlist_free (int *) ;
 int put_nvlist (TYPE_1__*,int *) ;
 int spa_close (int *,int ) ;
 int * spa_lookup (int ) ;
 int spa_namespace_lock ;
 int spa_open (int ,int **,int ) ;
 int spa_prop_get (int *,int **) ;

__attribute__((used)) static int
zfs_ioc_pool_get_props(zfs_cmd_t *zc)
{
 spa_t *spa;
 int error;
 nvlist_t *nvp = ((void*)0);

 if ((error = spa_open(zc->zc_name, &spa, FTAG)) != 0) {





  mutex_enter(&spa_namespace_lock);
  if ((spa = spa_lookup(zc->zc_name)) != ((void*)0))
   error = spa_prop_get(spa, &nvp);
  mutex_exit(&spa_namespace_lock);
 } else {
  error = spa_prop_get(spa, &nvp);
  spa_close(spa, FTAG);
 }

 if (error == 0 && zc->zc_nvlist_dst != 0)
  error = put_nvlist(zc, nvp);
 else
  error = SET_ERROR(EFAULT);

 nvlist_free(nvp);
 return (error);
}
