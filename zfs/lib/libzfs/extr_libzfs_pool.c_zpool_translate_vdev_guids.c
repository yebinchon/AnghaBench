
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int msg ;
typedef scalar_t__ boolean_t ;


 int EINVAL ;
 scalar_t__ EZFS_ISL2CACHE ;
 scalar_t__ EZFS_ISSPARE ;
 scalar_t__ EZFS_NODEVICE ;
 int MAXNAMELEN ;
 int ZPOOL_CONFIG_GUID ;
 int fnvlist_add_int64 (int *,char*,scalar_t__) ;
 int fnvlist_add_string (int *,char*,char*) ;
 int fnvlist_add_uint64 (int *,char*,scalar_t__) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 scalar_t__ fnvlist_lookup_uint64 (int *,int ) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int snprintf (char*,int,char*,int ) ;
 int verify (int ) ;
 int * zpool_find_vdev (int *,char*,scalar_t__*,scalar_t__*,int *) ;

__attribute__((used)) static int
zpool_translate_vdev_guids(zpool_handle_t *zhp, nvlist_t *vds,
    nvlist_t *vdev_guids, nvlist_t *guids_to_paths, nvlist_t **vd_errlist)
{
 nvlist_t *errlist = ((void*)0);
 int error = 0;

 for (nvpair_t *elem = nvlist_next_nvpair(vds, ((void*)0)); elem != ((void*)0);
     elem = nvlist_next_nvpair(vds, elem)) {
  boolean_t spare, cache;

  char *vd_path = nvpair_name(elem);
  nvlist_t *tgt = zpool_find_vdev(zhp, vd_path, &spare, &cache,
      ((void*)0));

  if ((tgt == ((void*)0)) || cache || spare) {
   if (errlist == ((void*)0)) {
    errlist = fnvlist_alloc();
    error = EINVAL;
   }

   uint64_t err = (tgt == ((void*)0)) ? EZFS_NODEVICE :
       (spare ? EZFS_ISSPARE : EZFS_ISL2CACHE);
   fnvlist_add_int64(errlist, vd_path, err);
   continue;
  }

  uint64_t guid = fnvlist_lookup_uint64(tgt, ZPOOL_CONFIG_GUID);
  fnvlist_add_uint64(vdev_guids, vd_path, guid);

  char msg[MAXNAMELEN];
  (void) snprintf(msg, sizeof (msg), "%llu", (u_longlong_t)guid);
  fnvlist_add_string(guids_to_paths, msg, vd_path);
 }

 if (error != 0) {
  verify(errlist != ((void*)0));
  if (vd_errlist != ((void*)0))
   *vd_errlist = errlist;
  else
   fnvlist_free(errlist);
 }

 return (error);
}
