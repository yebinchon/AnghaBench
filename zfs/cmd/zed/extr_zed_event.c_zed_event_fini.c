
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zed_conf {int zevent_fd; int * zfs_hdl; } ;


 int EINVAL ;
 int LOG_WARNING ;
 int ZFS_DEV ;
 scalar_t__ close (int) ;
 int errno ;
 int libzfs_fini (int *) ;
 int strerror (int ) ;
 int zed_disk_event_fini () ;
 int zed_log_die (char*,int ) ;
 int zed_log_msg (int ,char*,int ,int ) ;
 int zfs_agent_fini () ;

void
zed_event_fini(struct zed_conf *zcp)
{
 if (!zcp)
  zed_log_die("Failed zed_event_fini: %s", strerror(EINVAL));

 zed_disk_event_fini();
 zfs_agent_fini();

 if (zcp->zevent_fd >= 0) {
  if (close(zcp->zevent_fd) < 0)
   zed_log_msg(LOG_WARNING, "Failed to close \"%s\": %s",
       ZFS_DEV, strerror(errno));

  zcp->zevent_fd = -1;
 }
 if (zcp->zfs_hdl) {
  libzfs_fini(zcp->zfs_hdl);
  zcp->zfs_hdl = ((void*)0);
 }
}
