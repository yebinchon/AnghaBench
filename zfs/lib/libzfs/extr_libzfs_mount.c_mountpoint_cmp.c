
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef scalar_t__ uint64_t ;
typedef int mountb ;
typedef int mounta ;
typedef int boolean_t ;


 int B_FALSE ;
 int MAXPATHLEN ;
 int ZFS_PROP_MOUNTPOINT ;
 int ZFS_PROP_ZONED ;
 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 int strcmp (int ,int ) ;
 int verify (int) ;
 int zfs_get_name (int *) ;
 scalar_t__ zfs_get_type (int *) ;
 scalar_t__ zfs_prop_get (int *,int ,char*,int,int *,int *,int ,int ) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;

__attribute__((used)) static int
mountpoint_cmp(const void *arga, const void *argb)
{
 zfs_handle_t *const *zap = arga;
 zfs_handle_t *za = *zap;
 zfs_handle_t *const *zbp = argb;
 zfs_handle_t *zb = *zbp;
 char mounta[MAXPATHLEN];
 char mountb[MAXPATHLEN];
 const char *a = mounta;
 const char *b = mountb;
 boolean_t gota, gotb;
 uint64_t zoneda, zonedb;

 zoneda = zfs_prop_get_int(za, ZFS_PROP_ZONED);
 zonedb = zfs_prop_get_int(zb, ZFS_PROP_ZONED);
 if (zoneda && !zonedb)
  return (1);
 if (!zoneda && zonedb)
  return (-1);

 gota = (zfs_get_type(za) == ZFS_TYPE_FILESYSTEM);
 if (gota) {
  verify(zfs_prop_get(za, ZFS_PROP_MOUNTPOINT, mounta,
      sizeof (mounta), ((void*)0), ((void*)0), 0, B_FALSE) == 0);
 }
 gotb = (zfs_get_type(zb) == ZFS_TYPE_FILESYSTEM);
 if (gotb) {
  verify(zfs_prop_get(zb, ZFS_PROP_MOUNTPOINT, mountb,
      sizeof (mountb), ((void*)0), ((void*)0), 0, B_FALSE) == 0);
 }

 if (gota && gotb) {
  while (*a != '\0' && (*a == *b)) {
   a++;
   b++;
  }
  if (*a == *b)
   return (0);
  if (*a == '\0')
   return (-1);
  if (*b == '\0')
   return (1);
  if (*a == '/')
   return (-1);
  if (*b == '/')
   return (1);
  return (*a < *b ? -1 : *a > *b);
 }

 if (gota)
  return (-1);
 if (gotb)
  return (1);





 return (strcmp(zfs_get_name(za), zfs_get_name(zb)));
}
