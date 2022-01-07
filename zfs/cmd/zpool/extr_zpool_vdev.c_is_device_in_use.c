
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int buf ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int MAXPATHLEN ;
 int VDEV_TYPE_DISK ;
 int VDEV_TYPE_FILE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_PATH ;
 int ZPOOL_CONFIG_SPARES ;
 int ZPOOL_CONFIG_TYPE ;
 int ZPOOL_CONFIG_WHOLE_DISK ;
 int check_device (char*,int,int,int) ;
 int check_file (char*,int,int) ;
 scalar_t__ is_spare (int *,char*) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int nvlist_lookup_uint64 (int *,int ,int*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (char*,char*,int) ;
 int verify (int) ;
 int zfs_append_partition (char*,int) ;

__attribute__((used)) static boolean_t
is_device_in_use(nvlist_t *config, nvlist_t *nv, boolean_t force,
    boolean_t replacing, boolean_t isspare)
{
 nvlist_t **child;
 uint_t c, children;
 char *type, *path;
 int ret = 0;
 char buf[MAXPATHLEN];
 uint64_t wholedisk = B_FALSE;
 boolean_t anyinuse = B_FALSE;

 verify(nvlist_lookup_string(nv, ZPOOL_CONFIG_TYPE, &type) == 0);

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN,
     &child, &children) != 0) {

  verify(!nvlist_lookup_string(nv, ZPOOL_CONFIG_PATH, &path));
  if (strcmp(type, VDEV_TYPE_DISK) == 0)
   verify(!nvlist_lookup_uint64(nv,
       ZPOOL_CONFIG_WHOLE_DISK, &wholedisk));






  if (replacing) {
   (void) strlcpy(buf, path, sizeof (buf));
   if (wholedisk) {
    ret = zfs_append_partition(buf, sizeof (buf));
    if (ret == -1)
     return (-1);
   }

   if (is_spare(config, buf))
    return (B_FALSE);
  }

  if (strcmp(type, VDEV_TYPE_DISK) == 0)
   ret = check_device(path, force, isspare, wholedisk);

  else if (strcmp(type, VDEV_TYPE_FILE) == 0)
   ret = check_file(path, force, isspare);

  return (ret != 0);
 }

 for (c = 0; c < children; c++)
  if (is_device_in_use(config, child[c], force, replacing,
      B_FALSE))
   anyinuse = B_TRUE;

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_SPARES,
     &child, &children) == 0)
  for (c = 0; c < children; c++)
   if (is_device_in_use(config, child[c], force, replacing,
       B_TRUE))
    anyinuse = B_TRUE;

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_L2CACHE,
     &child, &children) == 0)
  for (c = 0; c < children; c++)
   if (is_device_in_use(config, child[c], force, replacing,
       B_FALSE))
    anyinuse = B_TRUE;

 return (anyinuse);
}
