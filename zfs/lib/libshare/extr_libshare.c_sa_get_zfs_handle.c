
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sa_handle_t ;
typedef TYPE_1__* sa_handle_impl_t ;
typedef int libzfs_handle_t ;
struct TYPE_2__ {int * zfs_libhandle; } ;



libzfs_handle_t *
sa_get_zfs_handle(sa_handle_t handle)
{
 sa_handle_impl_t impl_handle = (sa_handle_impl_t)handle;

 if (impl_handle == ((void*)0))
  return (((void*)0));

 return (impl_handle->zfs_libhandle);
}
