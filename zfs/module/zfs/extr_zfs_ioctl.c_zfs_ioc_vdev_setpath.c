
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* zc_value; int zc_name; int zc_guid; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int uint64_t ;
typedef int spa_t ;


 int FTAG ;
 int spa_close (int *,int ) ;
 int spa_open (int ,int **,int ) ;
 int spa_vdev_setpath (int *,int ,char*) ;

__attribute__((used)) static int
zfs_ioc_vdev_setpath(zfs_cmd_t *zc)
{
 spa_t *spa;
 char *path = zc->zc_value;
 uint64_t guid = zc->zc_guid;
 int error;

 error = spa_open(zc->zc_name, &spa, FTAG);
 if (error != 0)
  return (error);

 error = spa_vdev_setpath(spa, guid, path);
 spa_close(spa, FTAG);
 return (error);
}
