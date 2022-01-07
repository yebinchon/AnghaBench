
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zpool_config; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
struct TYPE_6__ {scalar_t__ cb_guid; TYPE_1__* cb_zhp; int cb_type; } ;
typedef TYPE_2__ aux_cbdata_t ;


 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ nvlist_lookup_nvlist (int ,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int verify (int) ;
 int zpool_close (TYPE_1__*) ;

__attribute__((used)) static int
find_aux(zpool_handle_t *zhp, void *data)
{
 aux_cbdata_t *cbp = data;
 nvlist_t **list;
 uint_t i, count;
 uint64_t guid;
 nvlist_t *nvroot;

 verify(nvlist_lookup_nvlist(zhp->zpool_config, ZPOOL_CONFIG_VDEV_TREE,
     &nvroot) == 0);

 if (nvlist_lookup_nvlist_array(nvroot, cbp->cb_type,
     &list, &count) == 0) {
  for (i = 0; i < count; i++) {
   verify(nvlist_lookup_uint64(list[i],
       ZPOOL_CONFIG_GUID, &guid) == 0);
   if (guid == cbp->cb_guid) {
    cbp->cb_zhp = zhp;
    return (1);
   }
  }
 }

 zpool_close(zhp);
 return (0);
}
