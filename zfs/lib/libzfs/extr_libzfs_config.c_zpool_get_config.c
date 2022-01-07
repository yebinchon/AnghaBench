
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * zpool_config; int * zpool_old_config; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef int nvlist_t ;



nvlist_t *
zpool_get_config(zpool_handle_t *zhp, nvlist_t **oldconfig)
{
 if (oldconfig)
  *oldconfig = zhp->zpool_old_config;
 return (zhp->zpool_config);
}
