
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_handle_t ;
typedef int nvpair_t ;
struct TYPE_4__ {int cb_defer_destroy; int cb_nvl; } ;
typedef TYPE_1__ destroy_cbdata_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int ZFS_TYPE_SNAPSHOT ;
 int destroy_callback ;
 int g_zfs ;
 int * nvlist_next_nvpair (int ,int *) ;
 int nvpair_name (int *) ;
 int zfs_close (int *) ;
 int zfs_iter_dependents (int *,int ,int ,TYPE_1__*) ;
 int * zfs_open (int ,int ,int ) ;

__attribute__((used)) static int
destroy_clones(destroy_cbdata_t *cb)
{
 nvpair_t *pair;
 for (pair = nvlist_next_nvpair(cb->cb_nvl, ((void*)0));
     pair != ((void*)0);
     pair = nvlist_next_nvpair(cb->cb_nvl, pair)) {
  zfs_handle_t *zhp = zfs_open(g_zfs, nvpair_name(pair),
      ZFS_TYPE_SNAPSHOT);
  if (zhp != ((void*)0)) {
   boolean_t defer = cb->cb_defer_destroy;
   int err;





   cb->cb_defer_destroy = B_FALSE;
   err = zfs_iter_dependents(zhp, B_FALSE,
       destroy_callback, cb);
   cb->cb_defer_destroy = defer;
   zfs_close(zhp);
   if (err != 0)
    return (err);
  }
 }
 return (0);
}
