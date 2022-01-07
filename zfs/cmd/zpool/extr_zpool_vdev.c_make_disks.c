
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef size_t uint_t ;
typedef int uint64_t ;
struct stat64 {int st_mode; } ;
typedef int nvlist_t ;


 int DISK_LABEL_WAIT ;
 int EBUSY ;
 int MAXPATHLEN ;
 int O_EXCL ;
 int O_RDWR ;
 scalar_t__ S_ISLNK (int ) ;
 int UDISK_ROOT ;
 int VDEV_TYPE_DISK ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_PATH ;
 int ZPOOL_CONFIG_SPARES ;
 int ZPOOL_CONFIG_TYPE ;
 int ZPOOL_CONFIG_WHOLE_DISK ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,char*,...) ;
 int g_zfs ;
 char* gettext (char*) ;
 scalar_t__ is_mpath_whole_disk (char*) ;
 int is_spare (int *,char*) ;
 int lstat64 (char*,struct stat64*) ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int nvlist_lookup_uint64 (int *,int ,int *) ;
 int open (char*,int) ;
 int * realpath (char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (char*,char*,int) ;
 int strlen (int ) ;
 int strncmp (char*,int ,int ) ;
 char* strrchr (char*,char) ;
 int unlink (char*) ;
 int update_vdev_config_dev_strs (int *) ;
 int verify (int) ;
 int zero_label (char*) ;
 int zfs_append_partition (char*,int) ;
 int zpool_label_disk (int ,int *,char*) ;
 int zpool_label_disk_wait (char*,int ) ;

__attribute__((used)) static int
make_disks(zpool_handle_t *zhp, nvlist_t *nv)
{
 nvlist_t **child;
 uint_t c, children;
 char *type, *path;
 char devpath[MAXPATHLEN];
 char udevpath[MAXPATHLEN];
 uint64_t wholedisk;
 struct stat64 statbuf;
 int is_exclusive = 0;
 int fd;
 int ret;

 verify(nvlist_lookup_string(nv, ZPOOL_CONFIG_TYPE, &type) == 0);

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN,
     &child, &children) != 0) {

  if (strcmp(type, VDEV_TYPE_DISK) != 0)
   return (0);
  verify(!nvlist_lookup_string(nv, ZPOOL_CONFIG_PATH, &path));
  verify(!nvlist_lookup_uint64(nv, ZPOOL_CONFIG_WHOLE_DISK,
      &wholedisk));

  if (!wholedisk) {



   if (is_mpath_whole_disk(path))
    update_vdev_config_dev_strs(nv);

   if (!is_spare(((void*)0), path))
    (void) zero_label(path);
   return (0);
  }

  if (realpath(path, devpath) == ((void*)0)) {
   ret = errno;
   (void) fprintf(stderr,
       gettext("cannot resolve path '%s'\n"), path);
   return (ret);
  }
  strlcpy(udevpath, path, MAXPATHLEN);
  (void) zfs_append_partition(udevpath, MAXPATHLEN);

  fd = open(devpath, O_RDWR|O_EXCL);
  if (fd == -1) {
   if (errno == EBUSY)
    is_exclusive = 1;
  } else {
   (void) close(fd);
  }
  if (!is_exclusive && !is_spare(((void*)0), udevpath)) {
   char *devnode = strrchr(devpath, '/') + 1;

   ret = strncmp(udevpath, UDISK_ROOT, strlen(UDISK_ROOT));
   if (ret == 0) {
    ret = lstat64(udevpath, &statbuf);
    if (ret == 0 && S_ISLNK(statbuf.st_mode))
     (void) unlink(udevpath);
   }





   if (zpool_label_disk(g_zfs, zhp, devnode) == -1)
    return (-1);





   ret = zpool_label_disk_wait(udevpath, DISK_LABEL_WAIT);
   if (ret) {
    (void) fprintf(stderr,
        gettext("missing link: %s was "
        "partitioned but %s is missing\n"),
        devnode, udevpath);
    return (ret);
   }

   ret = zero_label(udevpath);
   if (ret)
    return (ret);
  }







  verify(nvlist_add_string(nv, ZPOOL_CONFIG_PATH, udevpath) == 0);




  update_vdev_config_dev_strs(nv);

  return (0);
 }

 for (c = 0; c < children; c++)
  if ((ret = make_disks(zhp, child[c])) != 0)
   return (ret);

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_SPARES,
     &child, &children) == 0)
  for (c = 0; c < children; c++)
   if ((ret = make_disks(zhp, child[c])) != 0)
    return (ret);

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_L2CACHE,
     &child, &children) == 0)
  for (c = 0; c < children; c++)
   if ((ret = make_disks(zhp, child[c])) != 0)
    return (ret);

 return (0);
}
