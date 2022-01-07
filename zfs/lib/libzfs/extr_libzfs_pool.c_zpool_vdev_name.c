
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int tmpbuf ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int buf ;


 int PATH_BUF_LEN ;
 int VDEV_NAME_FOLLOW_LINKS ;
 int VDEV_NAME_GUID ;
 int VDEV_NAME_PATH ;
 int VDEV_NAME_TYPE_ID ;
 char* VDEV_TYPE_DISK ;
 char* VDEV_TYPE_RAIDZ ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_ID ;
 int ZPOOL_CONFIG_NOT_PRESENT ;
 int ZPOOL_CONFIG_NPARITY ;
 int ZPOOL_CONFIG_PATH ;
 int ZPOOL_CONFIG_TYPE ;
 int ZPOOL_CONFIG_WHOLE_DISK ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 char* realpath (char*,int *) ;
 int snprintf (char*,int,char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 int strncasecmp (char*,char*,int) ;
 scalar_t__ strtoul (char*,int *,int ) ;
 int verify (int) ;
 char* zfs_strdup (int *,char*) ;
 char* zfs_strip_partition (char*) ;
 char* zfs_strip_path (char*) ;
 char* zpool_get_name (int *) ;

char *
zpool_vdev_name(libzfs_handle_t *hdl, zpool_handle_t *zhp, nvlist_t *nv,
    int name_flags)
{
 char *path, *type, *env;
 uint64_t value;
 char buf[PATH_BUF_LEN];
 char tmpbuf[PATH_BUF_LEN];





 verify(nvlist_lookup_string(nv, ZPOOL_CONFIG_TYPE, &type) == 0);
 if (zhp != ((void*)0) && strcmp(type, "root") == 0)
  return (zfs_strdup(hdl, zpool_get_name(zhp)));

 env = getenv("ZPOOL_VDEV_NAME_PATH");
 if (env && (strtoul(env, ((void*)0), 0) > 0 ||
     !strncasecmp(env, "YES", 3) || !strncasecmp(env, "ON", 2)))
  name_flags |= VDEV_NAME_PATH;

 env = getenv("ZPOOL_VDEV_NAME_GUID");
 if (env && (strtoul(env, ((void*)0), 0) > 0 ||
     !strncasecmp(env, "YES", 3) || !strncasecmp(env, "ON", 2)))
  name_flags |= VDEV_NAME_GUID;

 env = getenv("ZPOOL_VDEV_NAME_FOLLOW_LINKS");
 if (env && (strtoul(env, ((void*)0), 0) > 0 ||
     !strncasecmp(env, "YES", 3) || !strncasecmp(env, "ON", 2)))
  name_flags |= VDEV_NAME_FOLLOW_LINKS;

 if (nvlist_lookup_uint64(nv, ZPOOL_CONFIG_NOT_PRESENT, &value) == 0 ||
     name_flags & VDEV_NAME_GUID) {
  (void) nvlist_lookup_uint64(nv, ZPOOL_CONFIG_GUID, &value);
  (void) snprintf(buf, sizeof (buf), "%llu", (u_longlong_t)value);
  path = buf;
 } else if (nvlist_lookup_string(nv, ZPOOL_CONFIG_PATH, &path) == 0) {
  if (name_flags & VDEV_NAME_FOLLOW_LINKS) {
   char *rp = realpath(path, ((void*)0));
   if (rp) {
    strlcpy(buf, rp, sizeof (buf));
    path = buf;
    free(rp);
   }
  }




  if ((strcmp(type, VDEV_TYPE_DISK) == 0) &&
      !(name_flags & VDEV_NAME_PATH)) {
   path = zfs_strip_path(path);
  }




  if (nvlist_lookup_uint64(nv, ZPOOL_CONFIG_WHOLE_DISK, &value)
      == 0 && value && !(name_flags & VDEV_NAME_PATH)) {
   return (zfs_strip_partition(path));
  }
 } else {
  path = type;




  if (strcmp(path, VDEV_TYPE_RAIDZ) == 0) {
   verify(nvlist_lookup_uint64(nv, ZPOOL_CONFIG_NPARITY,
       &value) == 0);
   (void) snprintf(buf, sizeof (buf), "%s%llu", path,
       (u_longlong_t)value);
   path = buf;
  }





  if (name_flags & VDEV_NAME_TYPE_ID) {
   uint64_t id;
   verify(nvlist_lookup_uint64(nv, ZPOOL_CONFIG_ID,
       &id) == 0);
   (void) snprintf(tmpbuf, sizeof (tmpbuf), "%s-%llu",
       path, (u_longlong_t)id);
   path = tmpbuf;
  }
 }

 return (zfs_strdup(hdl, path));
}
