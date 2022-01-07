
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int files_same (char*,char*,int ) ;
 scalar_t__ getenv_bool (char*) ;

int running_in_chroot(void) {
        int r;

        if (getenv_bool("SYSTEMD_IGNORE_CHROOT") > 0)
                return 0;

        r = files_same("/proc/1/root", "/", 0);
        if (r < 0)
                return r;

        return r == 0;
}
