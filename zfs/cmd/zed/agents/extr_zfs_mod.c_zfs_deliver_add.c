
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int boolean_t ;


 int DEV_IDENTIFIER ;
 int DEV_IS_PART ;
 int DEV_PHYS_PATH ;
 int LOG_INFO ;
 int devid_iter (char*,int ,int) ;
 int devphys_iter (char*,char*,int ,int) ;
 scalar_t__ nvlist_lookup_boolean (int *,int ) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int zed_log_msg (int ,char*,char*,char*,int) ;
 int zfs_process_add ;

__attribute__((used)) static int
zfs_deliver_add(nvlist_t *nvl, boolean_t is_lofi)
{
 char *devpath = ((void*)0), *devid;
 boolean_t is_slice;




 if (nvlist_lookup_string(nvl, DEV_IDENTIFIER, &devid) != 0)
  return (-1);

 (void) nvlist_lookup_string(nvl, DEV_PHYS_PATH, &devpath);

 is_slice = (nvlist_lookup_boolean(nvl, DEV_IS_PART) == 0);

 zed_log_msg(LOG_INFO, "zfs_deliver_add: adding %s (%s) (is_slice %d)",
     devid, devpath ? devpath : "NULL", is_slice);
 if (!devid_iter(devid, zfs_process_add, is_slice) && devpath != ((void*)0))
  (void) devphys_iter(devpath, devid, zfs_process_add, is_slice);

 return (0);
}
