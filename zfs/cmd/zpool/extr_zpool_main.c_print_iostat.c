
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int nvlist_t ;
struct TYPE_4__ {int cb_iteration; int cb_flags; int * vcdl; int cb_vdev_names_count; scalar_t__ cb_verbose; int cb_scripted; } ;
typedef TYPE_1__ iostat_cbdata_t ;


 int IOS_ANYHISTO_M ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 int print_cmd_columns (int *,int) ;
 int print_iostat_separator (TYPE_1__*) ;
 int print_vdev_stats (int *,int ,int *,int *,TYPE_1__*,int ) ;
 int printf (char*) ;
 int verify (int) ;
 int * zpool_get_config (int *,int **) ;
 int zpool_get_name (int *) ;

int
print_iostat(zpool_handle_t *zhp, void *data)
{
 iostat_cbdata_t *cb = data;
 nvlist_t *oldconfig, *newconfig;
 nvlist_t *oldnvroot, *newnvroot;
 int ret;

 newconfig = zpool_get_config(zhp, &oldconfig);

 if (cb->cb_iteration == 1)
  oldconfig = ((void*)0);

 verify(nvlist_lookup_nvlist(newconfig, ZPOOL_CONFIG_VDEV_TREE,
     &newnvroot) == 0);

 if (oldconfig == ((void*)0))
  oldnvroot = ((void*)0);
 else
  verify(nvlist_lookup_nvlist(oldconfig, ZPOOL_CONFIG_VDEV_TREE,
      &oldnvroot) == 0);

 ret = print_vdev_stats(zhp, zpool_get_name(zhp), oldnvroot, newnvroot,
     cb, 0);
 if ((ret != 0) && !(cb->cb_flags & IOS_ANYHISTO_M) &&
     !cb->cb_scripted && cb->cb_verbose && !cb->cb_vdev_names_count) {
  print_iostat_separator(cb);
  if (cb->vcdl != ((void*)0)) {
   print_cmd_columns(cb->vcdl, 1);
  }
  printf("\n");
 }

 return (ret);
}
