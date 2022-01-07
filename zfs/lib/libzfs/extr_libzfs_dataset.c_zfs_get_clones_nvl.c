
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ zfs_type; int * zfs_props; int zfs_hdl; int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
struct get_clones_arg {scalar_t__ numclones; int origin; int * value; } ;
typedef int pool ;
typedef int nvlist_t ;


 int NV_UNIQUE_NAME ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_CLONES ;
 int ZFS_PROP_NUMCLONES ;
 int ZFS_TYPE_FILESYSTEM ;
 scalar_t__ ZFS_TYPE_SNAPSHOT ;
 int ZPROP_VALUE ;
 int get_clones_cb (TYPE_1__*,struct get_clones_arg*) ;
 scalar_t__ nvlist_add_nvlist (int *,int ,int *) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 int strlcpy (char*,int ,int) ;
 int strsep (char**,char*) ;
 int verify (int) ;
 TYPE_1__* zfs_open (int ,char*,int ) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;
 int zfs_prop_to_name (int ) ;

nvlist_t *
zfs_get_clones_nvl(zfs_handle_t *zhp)
{
 nvlist_t *nv, *value;

 if (nvlist_lookup_nvlist(zhp->zfs_props,
     zfs_prop_to_name(ZFS_PROP_CLONES), &nv) != 0) {
  struct get_clones_arg gca;





  if (zhp->zfs_type != ZFS_TYPE_SNAPSHOT)
   return (((void*)0));
  if (nvlist_alloc(&nv, NV_UNIQUE_NAME, 0) != 0)
   return (((void*)0));
  if (nvlist_alloc(&value, NV_UNIQUE_NAME, 0) != 0) {
   nvlist_free(nv);
   return (((void*)0));
  }

  gca.numclones = zfs_prop_get_int(zhp, ZFS_PROP_NUMCLONES);
  gca.value = value;
  gca.origin = zhp->zfs_name;

  if (gca.numclones != 0) {
   zfs_handle_t *root;
   char pool[ZFS_MAX_DATASET_NAME_LEN];
   char *cp = pool;


   (void) strlcpy(pool, zhp->zfs_name, sizeof (pool));
   (void) strsep(&cp, "/@");
   root = zfs_open(zhp->zfs_hdl, pool,
       ZFS_TYPE_FILESYSTEM);
   if (root == ((void*)0)) {
    nvlist_free(nv);
    nvlist_free(value);
    return (((void*)0));
   }

   (void) get_clones_cb(root, &gca);
  }

  if (gca.numclones != 0 ||
      nvlist_add_nvlist(nv, ZPROP_VALUE, value) != 0 ||
      nvlist_add_nvlist(zhp->zfs_props,
      zfs_prop_to_name(ZFS_PROP_CLONES), nv) != 0) {
   nvlist_free(nv);
   nvlist_free(value);
   return (((void*)0));
  }
  nvlist_free(nv);
  nvlist_free(value);
  verify(0 == nvlist_lookup_nvlist(zhp->zfs_props,
      zfs_prop_to_name(ZFS_PROP_CLONES), &nv));
 }

 verify(nvlist_lookup_nvlist(nv, ZPROP_VALUE, &value) == 0);

 return (value);
}
