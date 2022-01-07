
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t zc_nvlist_dst_size; scalar_t__ zc_nvlist_dst; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int spa_t ;


 int FTAG ;
 int spa_close (int *,int ) ;
 int spa_get_errlog (int *,void*,size_t*) ;
 size_t spa_get_errlog_size (int *) ;
 int spa_open (int ,int **,int ) ;

__attribute__((used)) static int
zfs_ioc_error_log(zfs_cmd_t *zc)
{
 spa_t *spa;
 int error;
 size_t count = (size_t)zc->zc_nvlist_dst_size;

 if ((error = spa_open(zc->zc_name, &spa, FTAG)) != 0)
  return (error);

 error = spa_get_errlog(spa, (void *)(uintptr_t)zc->zc_nvlist_dst,
     &count);
 if (error == 0)
  zc->zc_nvlist_dst_size = count;
 else
  zc->zc_nvlist_dst_size = spa_get_errlog_size(spa);

 spa_close(spa, FTAG);

 return (error);
}
