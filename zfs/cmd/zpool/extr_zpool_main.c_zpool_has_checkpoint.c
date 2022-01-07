
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int uint_t ;
typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ pcs_state; } ;
typedef TYPE_1__ pool_checkpoint_stat_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ CS_CHECKPOINT_DISCARDING ;
 scalar_t__ CS_CHECKPOINT_EXISTS ;
 scalar_t__ CS_NONE ;
 int ZPOOL_CONFIG_CHECKPOINT_STATS ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int assert (int) ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 int nvlist_lookup_uint64_array (int *,int ,int **,int *) ;
 int * zpool_get_config (int *,int *) ;

__attribute__((used)) static boolean_t
zpool_has_checkpoint(zpool_handle_t *zhp)
{
 nvlist_t *config, *nvroot;

 config = zpool_get_config(zhp, ((void*)0));

 if (config != ((void*)0)) {
  pool_checkpoint_stat_t *pcs = ((void*)0);
  uint_t c;

  nvroot = fnvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE);
  (void) nvlist_lookup_uint64_array(nvroot,
      ZPOOL_CONFIG_CHECKPOINT_STATS, (uint64_t **)&pcs, &c);

  if (pcs == ((void*)0) || pcs->pcs_state == CS_NONE)
   return (B_FALSE);

  assert(pcs->pcs_state == CS_CHECKPOINT_EXISTS ||
      pcs->pcs_state == CS_CHECKPOINT_DISCARDING);
  return (B_TRUE);
 }

 return (B_FALSE);
}
