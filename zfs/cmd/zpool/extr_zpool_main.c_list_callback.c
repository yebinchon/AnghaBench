
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int nvlist_t ;
struct TYPE_4__ {scalar_t__ cb_verbose; } ;
typedef TYPE_1__ list_cbdata_t ;


 int B_FALSE ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 int print_list_stats (int *,int *,int *,TYPE_1__*,int ,int ) ;
 int print_pool (int *,TYPE_1__*) ;
 int verify (int) ;
 int * zpool_get_config (int *,int *) ;

int
list_callback(zpool_handle_t *zhp, void *data)
{
 list_cbdata_t *cbp = data;

 print_pool(zhp, cbp);

 if (cbp->cb_verbose) {
  nvlist_t *config, *nvroot;

  config = zpool_get_config(zhp, ((void*)0));
  verify(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
      &nvroot) == 0);
  print_list_stats(zhp, ((void*)0), nvroot, cbp, 0, B_FALSE);
 }

 return (0);
}
