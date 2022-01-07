
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_iflags; int zc_nvlist_conf_size; int zc_nvlist_conf; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int spa_t ;
typedef int nvlist_t ;


 int FTAG ;
 int get_nvlist (int ,int ,int ,int **) ;
 int nvlist_free (int *) ;
 int spa_close (int *,int ) ;
 int spa_open (int ,int **,int ) ;
 int spa_vdev_add (int *,int *) ;

__attribute__((used)) static int
zfs_ioc_vdev_add(zfs_cmd_t *zc)
{
 spa_t *spa;
 int error;
 nvlist_t *config;

 error = spa_open(zc->zc_name, &spa, FTAG);
 if (error != 0)
  return (error);

 error = get_nvlist(zc->zc_nvlist_conf, zc->zc_nvlist_conf_size,
     zc->zc_iflags, &config);
 if (error == 0) {
  error = spa_vdev_add(spa, config);
  nvlist_free(config);
 }
 spa_close(spa, FTAG);
 return (error);
}
