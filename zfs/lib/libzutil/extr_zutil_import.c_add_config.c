
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ve_guid; TYPE_5__* ve_configs; struct TYPE_8__* ve_next; } ;
typedef TYPE_1__ vdev_entry_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_9__ {TYPE_4__* names; TYPE_3__* pools; } ;
typedef TYPE_2__ pool_list_t ;
struct TYPE_10__ {scalar_t__ pe_guid; TYPE_1__* pe_vdevs; struct TYPE_10__* pe_next; } ;
typedef TYPE_3__ pool_entry_t ;
typedef int nvlist_t ;
struct TYPE_11__ {int ne_order; int ne_num_labels; struct TYPE_11__* ne_next; scalar_t__ ne_guid; int * ne_name; } ;
typedef TYPE_4__ name_entry_t ;
typedef int libpc_handle_t ;
struct TYPE_12__ {scalar_t__ ce_txg; struct TYPE_12__* ce_next; int ce_config; } ;
typedef TYPE_5__ config_entry_t ;


 scalar_t__ POOL_STATE_L2CACHE ;
 scalar_t__ POOL_STATE_SPARE ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_POOL_STATE ;
 int ZPOOL_CONFIG_POOL_TXG ;
 int ZPOOL_CONFIG_TOP_GUID ;
 int fnvlist_dup (int *) ;
 int free (TYPE_4__*) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 void* zutil_alloc (int *,int) ;
 void* zutil_strdup (int *,char const*) ;

__attribute__((used)) static int
add_config(libpc_handle_t *hdl, pool_list_t *pl, const char *path,
    int order, int num_labels, nvlist_t *config)
{
 uint64_t pool_guid, vdev_guid, top_guid, txg, state;
 pool_entry_t *pe;
 vdev_entry_t *ve;
 config_entry_t *ce;
 name_entry_t *ne;






 if (nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_STATE,
     &state) == 0 &&
     (state == POOL_STATE_SPARE || state == POOL_STATE_L2CACHE) &&
     nvlist_lookup_uint64(config, ZPOOL_CONFIG_GUID, &vdev_guid) == 0) {
  if ((ne = zutil_alloc(hdl, sizeof (name_entry_t))) == ((void*)0))
   return (-1);

  if ((ne->ne_name = zutil_strdup(hdl, path)) == ((void*)0)) {
   free(ne);
   return (-1);
  }
  ne->ne_guid = vdev_guid;
  ne->ne_order = order;
  ne->ne_num_labels = num_labels;
  ne->ne_next = pl->names;
  pl->names = ne;

  return (0);
 }
 if (nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_GUID,
     &pool_guid) != 0 ||
     nvlist_lookup_uint64(config, ZPOOL_CONFIG_GUID,
     &vdev_guid) != 0 ||
     nvlist_lookup_uint64(config, ZPOOL_CONFIG_TOP_GUID,
     &top_guid) != 0 ||
     nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_TXG,
     &txg) != 0 || txg == 0) {
  return (0);
 }





 for (pe = pl->pools; pe != ((void*)0); pe = pe->pe_next) {
  if (pe->pe_guid == pool_guid)
   break;
 }

 if (pe == ((void*)0)) {
  if ((pe = zutil_alloc(hdl, sizeof (pool_entry_t))) == ((void*)0)) {
   return (-1);
  }
  pe->pe_guid = pool_guid;
  pe->pe_next = pl->pools;
  pl->pools = pe;
 }





 for (ve = pe->pe_vdevs; ve != ((void*)0); ve = ve->ve_next) {
  if (ve->ve_guid == top_guid)
   break;
 }

 if (ve == ((void*)0)) {
  if ((ve = zutil_alloc(hdl, sizeof (vdev_entry_t))) == ((void*)0)) {
   return (-1);
  }
  ve->ve_guid = top_guid;
  ve->ve_next = pe->pe_vdevs;
  pe->pe_vdevs = ve;
 }






 for (ce = ve->ve_configs; ce != ((void*)0); ce = ce->ce_next) {
  if (ce->ce_txg == txg)
   break;
 }

 if (ce == ((void*)0)) {
  if ((ce = zutil_alloc(hdl, sizeof (config_entry_t))) == ((void*)0)) {
   return (-1);
  }
  ce->ce_txg = txg;
  ce->ce_config = fnvlist_dup(config);
  ce->ce_next = ve->ve_configs;
  ve->ve_configs = ce;
 }







 if ((ne = zutil_alloc(hdl, sizeof (name_entry_t))) == ((void*)0))
  return (-1);

 if ((ne->ne_name = zutil_strdup(hdl, path)) == ((void*)0)) {
  free(ne);
  return (-1);
 }

 ne->ne_guid = vdev_guid;
 ne->ne_order = order;
 ne->ne_num_labels = num_labels;
 ne->ne_next = pl->names;
 pl->names = ne;

 return (0);
}
