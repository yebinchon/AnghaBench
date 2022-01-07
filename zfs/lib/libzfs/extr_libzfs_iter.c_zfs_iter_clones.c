
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int (* zfs_iter_f ) (TYPE_1__*,void*) ;
struct TYPE_7__ {int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_VOLUME ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int * zfs_get_clones_nvl (TYPE_1__*) ;
 TYPE_1__* zfs_open (int ,int ,int) ;

int
zfs_iter_clones(zfs_handle_t *zhp, zfs_iter_f func, void *data)
{
 nvlist_t *nvl = zfs_get_clones_nvl(zhp);
 nvpair_t *pair;

 if (nvl == ((void*)0))
  return (0);

 for (pair = nvlist_next_nvpair(nvl, ((void*)0)); pair != ((void*)0);
     pair = nvlist_next_nvpair(nvl, pair)) {
  zfs_handle_t *clone = zfs_open(zhp->zfs_hdl, nvpair_name(pair),
      ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
  if (clone != ((void*)0)) {
   int err = func(clone, data);
   if (err != 0)
    return (err);
  }
 }
 return (0);
}
