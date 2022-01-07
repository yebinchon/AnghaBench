
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* zpool_next; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_8__ {TYPE_3__* zfs_hdl; } ;
typedef TYPE_2__ zfs_handle_t ;
struct TYPE_9__ {TYPE_1__* libzfs_pool_handles; } ;
typedef TYPE_3__ libzfs_handle_t ;


 scalar_t__ strncmp (char const*,int ,int) ;
 int zpool_get_name (TYPE_1__*) ;

__attribute__((used)) static zpool_handle_t *
zpool_find_handle(zfs_handle_t *zhp, const char *pool_name, int len)
{
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 zpool_handle_t *zph = hdl->libzfs_pool_handles;

 while ((zph != ((void*)0)) &&
     (strncmp(pool_name, zpool_get_name(zph), len) != 0))
  zph = zph->zpool_next;
 return (zph);
}
