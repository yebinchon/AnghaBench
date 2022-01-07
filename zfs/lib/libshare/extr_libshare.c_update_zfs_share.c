
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_6__ {char const* proto; TYPE_3__* handle; } ;
typedef TYPE_1__ update_cookie_t ;
typedef TYPE_2__* sa_share_impl_t ;
typedef TYPE_3__* sa_handle_impl_t ;
struct TYPE_8__ {int * zfs_libhandle; } ;
struct TYPE_7__ {int * dataset; TYPE_3__* handle; } ;


 int SA_OK ;
 int SA_SYSTEM_ERR ;
 int ZFS_TYPE_FILESYSTEM ;
 int assert (int ) ;
 int update_zfs_shares_cb (int *,TYPE_1__*) ;
 int * zfs_open (int *,int *,int ) ;

__attribute__((used)) static int
update_zfs_share(sa_share_impl_t impl_share, const char *proto)
{
 sa_handle_impl_t impl_handle = impl_share->handle;
 zfs_handle_t *zhp;
 update_cookie_t udata;

 if (impl_handle->zfs_libhandle == ((void*)0))
   return (SA_SYSTEM_ERR);

 assert(impl_share->dataset != ((void*)0));

 zhp = zfs_open(impl_share->handle->zfs_libhandle, impl_share->dataset,
     ZFS_TYPE_FILESYSTEM);

 if (zhp == ((void*)0))
  return (SA_SYSTEM_ERR);

 udata.handle = impl_handle;
 udata.proto = proto;
 (void) update_zfs_shares_cb(zhp, &udata);

 return (SA_OK);
}
