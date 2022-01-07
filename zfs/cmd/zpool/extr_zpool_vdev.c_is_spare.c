
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ pool_state_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int O_DIRECT ;
 int O_RDONLY ;
 scalar_t__ POOL_STATE_SPARE ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_SPARES ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int close (int) ;
 int free (char*) ;
 int g_zfs ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int open (char const*,int) ;
 int verify (int) ;
 scalar_t__ zpool_in_use (int ,int,scalar_t__*,char**,int *) ;
 scalar_t__ zpool_read_label (int,int **,int *) ;

__attribute__((used)) static boolean_t
is_spare(nvlist_t *config, const char *path)
{
 int fd;
 pool_state_t state;
 char *name = ((void*)0);
 nvlist_t *label;
 uint64_t guid, spareguid;
 nvlist_t *nvroot;
 nvlist_t **spares;
 uint_t i, nspares;
 boolean_t inuse;

 if ((fd = open(path, O_RDONLY|O_DIRECT)) < 0)
  return (B_FALSE);

 if (zpool_in_use(g_zfs, fd, &state, &name, &inuse) != 0 ||
     !inuse ||
     state != POOL_STATE_SPARE ||
     zpool_read_label(fd, &label, ((void*)0)) != 0) {
  free(name);
  (void) close(fd);
  return (B_FALSE);
 }
 free(name);
 (void) close(fd);

 if (config == ((void*)0)) {
  nvlist_free(label);
  return (B_TRUE);
 }

 verify(nvlist_lookup_uint64(label, ZPOOL_CONFIG_GUID, &guid) == 0);
 nvlist_free(label);

 verify(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
     &nvroot) == 0);
 if (nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_SPARES,
     &spares, &nspares) == 0) {
  for (i = 0; i < nspares; i++) {
   verify(nvlist_lookup_uint64(spares[i],
       ZPOOL_CONFIG_GUID, &spareguid) == 0);
   if (spareguid == guid)
    return (B_TRUE);
  }
 }

 return (B_FALSE);
}
