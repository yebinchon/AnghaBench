
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int EC_DEV_ADD ;
 int EC_DEV_STATUS ;
 int EC_ZFS ;
 int ESC_DEV_DLE ;
 int ESC_DISK ;
 int ESC_LOFI ;
 int ESC_ZFS_VDEV_CHECK ;
 scalar_t__ strcmp (char const*,int ) ;
 int zfs_deliver_add (int *,scalar_t__) ;
 int zfs_deliver_check (int *) ;
 int zfs_deliver_dle (int *) ;

__attribute__((used)) static int
zfs_slm_deliver_event(const char *class, const char *subclass, nvlist_t *nvl)
{
 int ret;
 boolean_t is_lofi = B_FALSE, is_check = B_FALSE, is_dle = B_FALSE;

 if (strcmp(class, EC_DEV_ADD) == 0) {




  if (strcmp(subclass, ESC_DISK) == 0)
   is_lofi = B_FALSE;
  else if (strcmp(subclass, ESC_LOFI) == 0)
   is_lofi = B_TRUE;
  else
   return (0);

  is_check = B_FALSE;
 } else if (strcmp(class, EC_ZFS) == 0 &&
     strcmp(subclass, ESC_ZFS_VDEV_CHECK) == 0) {





  is_check = B_TRUE;
 } else if (strcmp(class, EC_DEV_STATUS) == 0 &&
     strcmp(subclass, ESC_DEV_DLE) == 0) {
  is_dle = B_TRUE;
 } else {
  return (0);
 }

 if (is_dle)
  ret = zfs_deliver_dle(nvl);
 else if (is_check)
  ret = zfs_deliver_check(nvl);
 else
  ret = zfs_deliver_add(nvl, is_lofi);

 return (ret);
}
