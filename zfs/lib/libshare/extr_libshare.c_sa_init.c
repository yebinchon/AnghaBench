
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sa_handle_impl {int dummy; } ;
typedef int * sa_handle_t ;
typedef TYPE_1__* sa_handle_impl_t ;
struct TYPE_5__ {int * zfs_libhandle; } ;


 int B_TRUE ;
 TYPE_1__* calloc (int,int) ;
 int * libzfs_init () ;
 int libzfs_print_on_error (int *,int ) ;
 int parse_sharetab (TYPE_1__*) ;
 int update_zfs_shares (TYPE_1__*,int *) ;

sa_handle_t
sa_init(int init_service)
{
 sa_handle_impl_t impl_handle;

 impl_handle = calloc(1, sizeof (struct sa_handle_impl));

 if (impl_handle == ((void*)0))
  return (((void*)0));

 impl_handle->zfs_libhandle = libzfs_init();

 if (impl_handle->zfs_libhandle != ((void*)0)) {
  libzfs_print_on_error(impl_handle->zfs_libhandle, B_TRUE);
 }

 parse_sharetab(impl_handle);
 update_zfs_shares(impl_handle, ((void*)0));

 return ((sa_handle_t)impl_handle);
}
