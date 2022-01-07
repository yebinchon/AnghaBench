
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zed_conf {scalar_t__ zevent_fd; int zfs_hdl; } ;


 int EINVAL ;
 int O_RDWR ;
 int ZFS_DEV ;
 int errno ;
 int libzfs_init () ;
 scalar_t__ open (int ,int ) ;
 int strerror (int ) ;
 scalar_t__ zed_disk_event_init () ;
 int zed_log_die (char*,...) ;
 int zfs_agent_init (int ) ;

void
zed_event_init(struct zed_conf *zcp)
{
 if (!zcp)
  zed_log_die("Failed zed_event_init: %s", strerror(EINVAL));

 zcp->zfs_hdl = libzfs_init();
 if (!zcp->zfs_hdl)
  zed_log_die("Failed to initialize libzfs");

 zcp->zevent_fd = open(ZFS_DEV, O_RDWR);
 if (zcp->zevent_fd < 0)
  zed_log_die("Failed to open \"%s\": %s",
      ZFS_DEV, strerror(errno));

 zfs_agent_init(zcp->zfs_hdl);

 if (zed_disk_event_init() != 0)
  zed_log_die("Failed to initialize disk events");
}
