
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int (* zfs_iter_f ) (int *,void*) ;
typedef int zfs_handle_t ;
struct TYPE_9__ {int libzfs_ns_avl; } ;
typedef TYPE_1__ libzfs_handle_t ;
struct TYPE_10__ {int cn_name; } ;
typedef TYPE_2__ config_node_t ;


 int * make_dataset_handle (TYPE_1__*,int ) ;
 scalar_t__ namespace_reload (TYPE_1__*) ;
 TYPE_2__* uu_avl_first (int ) ;
 TYPE_2__* uu_avl_next (int ,TYPE_2__*) ;
 scalar_t__ zpool_skip_pool (int ) ;

int
zfs_iter_root(libzfs_handle_t *hdl, zfs_iter_f func, void *data)
{
 config_node_t *cn;
 zfs_handle_t *zhp;
 int ret;

 if (namespace_reload(hdl) != 0)
  return (-1);

 for (cn = uu_avl_first(hdl->libzfs_ns_avl); cn != ((void*)0);
     cn = uu_avl_next(hdl->libzfs_ns_avl, cn)) {

  if (zpool_skip_pool(cn->cn_name))
   continue;

  if ((zhp = make_dataset_handle(hdl, cn->cn_name)) == ((void*)0))
   continue;

  if ((ret = func(zhp, data)) != 0)
   return (ret);
 }

 return (0);
}
