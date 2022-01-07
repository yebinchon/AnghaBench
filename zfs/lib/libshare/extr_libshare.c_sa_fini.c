
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* sa_share_impl_t ;
typedef int sa_handle_t ;
typedef TYPE_2__* sa_handle_impl_t ;
struct TYPE_8__ {TYPE_1__* shares; int * zfs_libhandle; } ;
struct TYPE_7__ {struct TYPE_7__* next; int * dataset; } ;


 int free (TYPE_2__*) ;
 int free_share (TYPE_1__*) ;
 int libzfs_fini (int *) ;
 int sa_disable_share (TYPE_1__*,int *) ;
 int update_sharetab (TYPE_2__*) ;

void
sa_fini(sa_handle_t handle)
{
 sa_handle_impl_t impl_handle = (sa_handle_impl_t)handle;
 sa_share_impl_t impl_share, next;
 sa_share_impl_t *pcurr;

 if (impl_handle == ((void*)0))
  return;






 pcurr = &(impl_handle->shares);
 impl_share = *pcurr;
 while (impl_share != ((void*)0)) {
  next = impl_share->next;

  if (impl_share->dataset == ((void*)0)) {

   *pcurr = next;

   sa_disable_share(impl_share, ((void*)0));

   free_share(impl_share);
  } else {
   pcurr = &(impl_share->next);
  }

  impl_share = next;
 }

 update_sharetab(impl_handle);

 if (impl_handle->zfs_libhandle != ((void*)0))
  libzfs_fini(impl_handle->zfs_libhandle);

 impl_share = impl_handle->shares;
 while (impl_share != ((void*)0)) {
  next = impl_share->next;
  free_share(impl_share);
  impl_share = next;
 }

 free(impl_handle);
}
