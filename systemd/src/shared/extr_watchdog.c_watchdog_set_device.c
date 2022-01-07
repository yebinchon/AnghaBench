
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_and_strdup (int *,char*) ;
 int safe_close (int ) ;
 int watchdog_device ;
 int watchdog_fd ;

int watchdog_set_device(char *path) {
        int r;

        r = free_and_strdup(&watchdog_device, path);
        if (r < 0)
                return r;

        if (r > 0)
                watchdog_fd = safe_close(watchdog_fd);

        return r;
}
