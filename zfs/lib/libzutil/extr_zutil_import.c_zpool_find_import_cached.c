
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct stat64 {scalar_t__ st_size; } ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int libpc_handle_t ;
typedef scalar_t__ boolean_t ;


 int EZFS_BADCACHE ;
 int O_RDONLY ;
 int TEXT_DOMAIN ;
 int ZPOOL_CONFIG_CACHEFILE ;
 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_POOL_NAME ;
 int close (int) ;
 int dgettext (int ,char*) ;
 int errno ;
 char* fnvlist_lookup_string (int *,int ) ;
 scalar_t__ fnvlist_lookup_uint64 (int *,int ) ;
 int * fnvpair_value_nvlist (int *) ;
 int free (char*) ;
 scalar_t__ fstat64 (int,struct stat64*) ;
 scalar_t__ nvlist_add_nvlist (int *,int ,int *) ;
 scalar_t__ nvlist_add_string (int *,int ,char const*) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 scalar_t__ nvlist_unpack (char*,scalar_t__,int **,int ) ;
 int nvpair_name (int *) ;
 int open (char const*,int ) ;
 scalar_t__ read (int,char*,scalar_t__) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strerror (int ) ;
 int verify (int) ;
 char* zutil_alloc (int *,scalar_t__) ;
 int zutil_error (int *,int ,int ) ;
 int zutil_error_aux (int *,char*,int ) ;
 int zutil_no_memory (int *) ;
 scalar_t__ zutil_pool_active (int *,char*,scalar_t__,scalar_t__*) ;
 int * zutil_refresh_config (int *,int *) ;

__attribute__((used)) static nvlist_t *
zpool_find_import_cached(libpc_handle_t *hdl, const char *cachefile,
    const char *poolname, uint64_t guid)
{
 char *buf;
 int fd;
 struct stat64 statbuf;
 nvlist_t *raw, *src, *dst;
 nvlist_t *pools;
 nvpair_t *elem;
 char *name;
 uint64_t this_guid;
 boolean_t active;

 verify(poolname == ((void*)0) || guid == 0);

 if ((fd = open(cachefile, O_RDONLY)) < 0) {
  zutil_error_aux(hdl, "%s", strerror(errno));
  (void) zutil_error(hdl, EZFS_BADCACHE,
      dgettext(TEXT_DOMAIN, "failed to open cache file"));
  return (((void*)0));
 }

 if (fstat64(fd, &statbuf) != 0) {
  zutil_error_aux(hdl, "%s", strerror(errno));
  (void) close(fd);
  (void) zutil_error(hdl, EZFS_BADCACHE,
      dgettext(TEXT_DOMAIN, "failed to get size of cache file"));
  return (((void*)0));
 }

 if ((buf = zutil_alloc(hdl, statbuf.st_size)) == ((void*)0)) {
  (void) close(fd);
  return (((void*)0));
 }

 if (read(fd, buf, statbuf.st_size) != statbuf.st_size) {
  (void) close(fd);
  free(buf);
  (void) zutil_error(hdl, EZFS_BADCACHE,
      dgettext(TEXT_DOMAIN,
      "failed to read cache file contents"));
  return (((void*)0));
 }

 (void) close(fd);

 if (nvlist_unpack(buf, statbuf.st_size, &raw, 0) != 0) {
  free(buf);
  (void) zutil_error(hdl, EZFS_BADCACHE,
      dgettext(TEXT_DOMAIN,
      "invalid or corrupt cache file contents"));
  return (((void*)0));
 }

 free(buf);





 if (nvlist_alloc(&pools, 0, 0) != 0) {
  (void) zutil_no_memory(hdl);
  nvlist_free(raw);
  return (((void*)0));
 }

 elem = ((void*)0);
 while ((elem = nvlist_next_nvpair(raw, elem)) != ((void*)0)) {
  src = fnvpair_value_nvlist(elem);

  name = fnvlist_lookup_string(src, ZPOOL_CONFIG_POOL_NAME);
  if (poolname != ((void*)0) && strcmp(poolname, name) != 0)
   continue;

  this_guid = fnvlist_lookup_uint64(src, ZPOOL_CONFIG_POOL_GUID);
  if (guid != 0 && guid != this_guid)
   continue;

  if (zutil_pool_active(hdl, name, this_guid, &active) != 0) {
   nvlist_free(raw);
   nvlist_free(pools);
   return (((void*)0));
  }

  if (active)
   continue;

  if (nvlist_add_string(src, ZPOOL_CONFIG_CACHEFILE,
      cachefile) != 0) {
   (void) zutil_no_memory(hdl);
   nvlist_free(raw);
   nvlist_free(pools);
   return (((void*)0));
  }

  if ((dst = zutil_refresh_config(hdl, src)) == ((void*)0)) {
   nvlist_free(raw);
   nvlist_free(pools);
   return (((void*)0));
  }

  if (nvlist_add_nvlist(pools, nvpair_name(elem), dst) != 0) {
   (void) zutil_no_memory(hdl);
   nvlist_free(dst);
   nvlist_free(raw);
   nvlist_free(pools);
   return (((void*)0));
  }
  nvlist_free(dst);
 }

 nvlist_free(raw);
 return (pools);
}
