
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat64 {int dummy; } ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ZFS_SYSFS_ALT_DIR ;
 int ZFS_SYSFS_DIR ;
 scalar_t__ stat64 (int ,struct stat64*) ;
 scalar_t__ zfs_mod_supported_impl (char const*,char const*,int ) ;

boolean_t
zfs_mod_supported(const char *scope, const char *name)
{
 boolean_t supported;





 supported = (zfs_mod_supported_impl(scope, name, ZFS_SYSFS_DIR) ||
     zfs_mod_supported_impl(scope, name, ZFS_SYSFS_ALT_DIR));







 if (supported == B_FALSE) {
  struct stat64 statbuf;
  if ((stat64(ZFS_SYSFS_DIR, &statbuf) == 0) &&
      !zfs_mod_supported_impl(scope, ((void*)0), ZFS_SYSFS_DIR) &&
      !zfs_mod_supported_impl(scope, ((void*)0), ZFS_SYSFS_ALT_DIR)) {
   supported = B_TRUE;
  }
 }

 return (supported);
}
