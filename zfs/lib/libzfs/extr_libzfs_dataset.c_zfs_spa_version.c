
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_3__ {int * zpool_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;


 int ZPOOL_PROP_VERSION ;
 int zpool_get_prop_int (int *,int ,int *) ;

int
zfs_spa_version(zfs_handle_t *zhp, int *spa_version)
{
 zpool_handle_t *zpool_handle = zhp->zpool_hdl;

 if (zpool_handle == ((void*)0))
  return (-1);

 *spa_version = zpool_get_prop_int(zpool_handle,
     ZPOOL_PROP_VERSION, ((void*)0));
 return (0);
}
