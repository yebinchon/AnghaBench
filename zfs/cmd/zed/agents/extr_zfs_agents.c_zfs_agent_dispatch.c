
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 char* EC_ZFS ;
 char* FM_LIST_SUSPECT_CLASS ;
 int fmd_module_hdl (char*) ;
 int fmd_module_recv (int ,int *,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * strstr (char const*,char*) ;
 int zfs_slm_event (char const*,char const*,int *) ;

__attribute__((used)) static void
zfs_agent_dispatch(const char *class, const char *subclass, nvlist_t *nvl)
{





 if (strstr(class, "ereport.fs.zfs.") != ((void*)0) ||
     strstr(class, "resource.fs.zfs.") != ((void*)0) ||
     strcmp(class, "sysevent.fs.zfs.vdev_remove") == 0 ||
     strcmp(class, "sysevent.fs.zfs.vdev_remove_dev") == 0 ||
     strcmp(class, "sysevent.fs.zfs.pool_destroy") == 0) {
  fmd_module_recv(fmd_module_hdl("zfs-diagnosis"), nvl, class);
 }
 if (strcmp(class, FM_LIST_SUSPECT_CLASS) == 0 ||
     strcmp(class, "resource.fs.zfs.removed") == 0 ||
     strcmp(class, "resource.fs.zfs.statechange") == 0 ||
     strcmp(class, "sysevent.fs.zfs.vdev_remove") == 0) {
  fmd_module_recv(fmd_module_hdl("zfs-retire"), nvl, class);
 }







 if (strstr(class, "EC_dev_") != ((void*)0) ||
     strcmp(class, EC_ZFS) == 0) {
  (void) zfs_slm_event(class, subclass, nvl);
 }
}
