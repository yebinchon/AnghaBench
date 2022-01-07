
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;


 int NV_UNIQUE_NAME ;
 int no_memory (int *) ;
 scalar_t__ nvlist_add_nvlist (int *,int ,int *) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 int verify (int) ;
 int zfs_prop_user (int ) ;

__attribute__((used)) static nvlist_t *
process_user_props(zfs_handle_t *zhp, nvlist_t *props)
{
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 nvpair_t *elem;
 nvlist_t *propval;
 nvlist_t *nvl;

 if (nvlist_alloc(&nvl, NV_UNIQUE_NAME, 0) != 0) {
  (void) no_memory(hdl);
  return (((void*)0));
 }

 elem = ((void*)0);
 while ((elem = nvlist_next_nvpair(props, elem)) != ((void*)0)) {
  if (!zfs_prop_user(nvpair_name(elem)))
   continue;

  verify(nvpair_value_nvlist(elem, &propval) == 0);
  if (nvlist_add_nvlist(nvl, nvpair_name(elem), propval) != 0) {
   nvlist_free(nvl);
   (void) no_memory(hdl);
   return (((void*)0));
  }
 }

 return (nvl);
}
