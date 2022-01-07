
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef void* uint64_t ;
typedef int time_t ;
typedef int nvlist_t ;
typedef scalar_t__ mmp_state_t ;


 scalar_t__ MMP_STATE_ACTIVE ;
 scalar_t__ MMP_STATE_INACTIVE ;
 scalar_t__ MMP_STATE_NO_HOSTID ;
 scalar_t__ POOL_STATE_UNAVAIL ;
 int SPA_VERSION_IS_SUPPORTED (void*) ;
 int ZFS_IMPORT_ANY_HOST ;
 int ZFS_IMPORT_LOAD_KEYS ;
 int ZFS_IMPORT_ONLY ;
 int ZPOOL_CONFIG_HOSTID ;
 int ZPOOL_CONFIG_HOSTNAME ;
 int ZPOOL_CONFIG_LOAD_INFO ;
 int ZPOOL_CONFIG_MMP_HOSTID ;
 int ZPOOL_CONFIG_MMP_HOSTNAME ;
 int ZPOOL_CONFIG_MMP_STATE ;
 int ZPOOL_CONFIG_POOL_NAME ;
 int ZPOOL_CONFIG_TIMESTAMP ;
 int ZPOOL_CONFIG_VERSION ;
 int ctime (int *) ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 char* fnvlist_lookup_string (int *,int ) ;
 void* fnvlist_lookup_uint64 (int *,int ) ;
 int fprintf (int ,char*,char*,...) ;
 int g_zfs ;
 char* gettext (char*) ;
 scalar_t__ nvlist_exists (int *,int ) ;
 int stderr ;
 int zfs_crypto_attempt_load_keys (int ,char*) ;
 scalar_t__ zfs_force_import_required (int *) ;
 int zpool_close (int *) ;
 scalar_t__ zpool_enable_datasets (int *,char const*,int ) ;
 scalar_t__ zpool_get_state (int *) ;
 scalar_t__ zpool_import_props (int ,int *,char const*,int *,int) ;
 int * zpool_open_canfail (int ,char*) ;

__attribute__((used)) static int
do_import(nvlist_t *config, const char *newname, const char *mntopts,
    nvlist_t *props, int flags)
{
 int ret = 0;
 zpool_handle_t *zhp;
 char *name;
 uint64_t version;

 name = fnvlist_lookup_string(config, ZPOOL_CONFIG_POOL_NAME);
 version = fnvlist_lookup_uint64(config, ZPOOL_CONFIG_VERSION);

 if (!SPA_VERSION_IS_SUPPORTED(version)) {
  (void) fprintf(stderr, gettext("cannot import '%s': pool "
      "is formatted using an unsupported ZFS version\n"), name);
  return (1);
 } else if (zfs_force_import_required(config) &&
     !(flags & ZFS_IMPORT_ANY_HOST)) {
  mmp_state_t mmp_state = MMP_STATE_INACTIVE;
  nvlist_t *nvinfo;

  nvinfo = fnvlist_lookup_nvlist(config, ZPOOL_CONFIG_LOAD_INFO);
  if (nvlist_exists(nvinfo, ZPOOL_CONFIG_MMP_STATE))
   mmp_state = fnvlist_lookup_uint64(nvinfo,
       ZPOOL_CONFIG_MMP_STATE);

  if (mmp_state == MMP_STATE_ACTIVE) {
   char *hostname = "<unknown>";
   uint64_t hostid = 0;

   if (nvlist_exists(nvinfo, ZPOOL_CONFIG_MMP_HOSTNAME))
    hostname = fnvlist_lookup_string(nvinfo,
        ZPOOL_CONFIG_MMP_HOSTNAME);

   if (nvlist_exists(nvinfo, ZPOOL_CONFIG_MMP_HOSTID))
    hostid = fnvlist_lookup_uint64(nvinfo,
        ZPOOL_CONFIG_MMP_HOSTID);

   (void) fprintf(stderr, gettext("cannot import '%s': "
       "pool is imported on %s (hostid: "
       "0x%lx)\nExport the pool on the other system, "
       "then run 'zpool import'.\n"),
       name, hostname, (unsigned long) hostid);
  } else if (mmp_state == MMP_STATE_NO_HOSTID) {
   (void) fprintf(stderr, gettext("Cannot import '%s': "
       "pool has the multihost property on and the\n"
       "system's hostid is not set. Set a unique hostid "
       "with the zgenhostid(8) command.\n"), name);
  } else {
   char *hostname = "<unknown>";
   uint64_t timestamp = 0;
   uint64_t hostid = 0;

   if (nvlist_exists(config, ZPOOL_CONFIG_HOSTNAME))
    hostname = fnvlist_lookup_string(config,
        ZPOOL_CONFIG_HOSTNAME);

   if (nvlist_exists(config, ZPOOL_CONFIG_TIMESTAMP))
    timestamp = fnvlist_lookup_uint64(config,
        ZPOOL_CONFIG_TIMESTAMP);

   if (nvlist_exists(config, ZPOOL_CONFIG_HOSTID))
    hostid = fnvlist_lookup_uint64(config,
        ZPOOL_CONFIG_HOSTID);

   (void) fprintf(stderr, gettext("cannot import '%s': "
       "pool was previously in use from another system.\n"
       "Last accessed by %s (hostid=%lx) at %s"
       "The pool can be imported, use 'zpool import -f' "
       "to import the pool.\n"), name, hostname,
       (unsigned long)hostid, ctime((time_t *)&timestamp));
  }

  return (1);
 }

 if (zpool_import_props(g_zfs, config, newname, props, flags) != 0)
  return (1);

 if (newname != ((void*)0))
  name = (char *)newname;

 if ((zhp = zpool_open_canfail(g_zfs, name)) == ((void*)0))
  return (1);





 if (flags & ZFS_IMPORT_LOAD_KEYS) {
  ret = zfs_crypto_attempt_load_keys(g_zfs, name);
  if (ret != 0)
   ret = 1;
 }

 if (zpool_get_state(zhp) != POOL_STATE_UNAVAIL &&
     !(flags & ZFS_IMPORT_ONLY) &&
     zpool_enable_datasets(zhp, mntopts, 0) != 0) {
  zpool_close(zhp);
  return (1);
 }

 zpool_close(zhp);
 return (ret);
}
