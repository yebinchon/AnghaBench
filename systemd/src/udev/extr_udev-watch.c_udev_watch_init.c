
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_CLOEXEC ;
 int errno ;
 scalar_t__ inotify_fd ;
 scalar_t__ inotify_init1 (int ) ;

int udev_watch_init(void) {
        inotify_fd = inotify_init1(IN_CLOEXEC);
        if (inotify_fd < 0)
                return -errno;

        return inotify_fd;
}
