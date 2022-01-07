
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int EINVAL ;
 int FTAG ;
 scalar_t__ POOL_INITIALIZE_CANCEL ;
 scalar_t__ POOL_INITIALIZE_START ;
 scalar_t__ POOL_INITIALIZE_SUSPEND ;
 int SET_ERROR (int) ;
 int ZPOOL_INITIALIZE_COMMAND ;
 int ZPOOL_INITIALIZE_VDEVS ;
 int fnvlist_add_nvlist (int *,int ,int *) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 scalar_t__ fnvlist_size (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int * nvlist_next_nvpair (int *,int *) ;
 scalar_t__ nvpair_value_uint64 (int *,scalar_t__*) ;
 int spa_close (int *,int ) ;
 int spa_open (char const*,int **,int ) ;
 int spa_vdev_initialize (int *,int *,scalar_t__,int *) ;

__attribute__((used)) static int
zfs_ioc_pool_initialize(const char *poolname, nvlist_t *innvl, nvlist_t *outnvl)
{
 uint64_t cmd_type;
 if (nvlist_lookup_uint64(innvl, ZPOOL_INITIALIZE_COMMAND,
     &cmd_type) != 0) {
  return (SET_ERROR(EINVAL));
 }

 if (!(cmd_type == POOL_INITIALIZE_CANCEL ||
     cmd_type == POOL_INITIALIZE_START ||
     cmd_type == POOL_INITIALIZE_SUSPEND)) {
  return (SET_ERROR(EINVAL));
 }

 nvlist_t *vdev_guids;
 if (nvlist_lookup_nvlist(innvl, ZPOOL_INITIALIZE_VDEVS,
     &vdev_guids) != 0) {
  return (SET_ERROR(EINVAL));
 }

 for (nvpair_t *pair = nvlist_next_nvpair(vdev_guids, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(vdev_guids, pair)) {
  uint64_t vdev_guid;
  if (nvpair_value_uint64(pair, &vdev_guid) != 0) {
   return (SET_ERROR(EINVAL));
  }
 }

 spa_t *spa;
 int error = spa_open(poolname, &spa, FTAG);
 if (error != 0)
  return (error);

 nvlist_t *vdev_errlist = fnvlist_alloc();
 int total_errors = spa_vdev_initialize(spa, vdev_guids, cmd_type,
     vdev_errlist);

 if (fnvlist_size(vdev_errlist) > 0) {
  fnvlist_add_nvlist(outnvl, ZPOOL_INITIALIZE_VDEVS,
      vdev_errlist);
 }
 fnvlist_free(vdev_errlist);

 spa_close(spa, FTAG);
 return (total_errors > 0 ? EINVAL : 0);
}
