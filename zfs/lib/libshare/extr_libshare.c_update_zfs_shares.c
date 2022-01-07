
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* proto; TYPE_2__* handle; } ;
typedef TYPE_1__ update_cookie_t ;
typedef TYPE_2__* sa_handle_impl_t ;
struct TYPE_6__ {int * zfs_libhandle; } ;


 int SA_OK ;
 int SA_SYSTEM_ERR ;
 int update_zfs_shares_cb ;
 int zfs_iter_root (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int
update_zfs_shares(sa_handle_impl_t impl_handle, const char *proto)
{
 update_cookie_t udata;

 if (impl_handle->zfs_libhandle == ((void*)0))
  return (SA_SYSTEM_ERR);

 udata.handle = impl_handle;
 udata.proto = proto;
 (void) zfs_iter_root(impl_handle->zfs_libhandle, update_zfs_shares_cb,
     &udata);

 return (SA_OK);
}
