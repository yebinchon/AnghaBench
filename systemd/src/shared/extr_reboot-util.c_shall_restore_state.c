
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int proc_cmdline_get_bool (char*,int*) ;

int shall_restore_state(void) {
        bool ret;
        int r;

        r = proc_cmdline_get_bool("systemd.restore_state", &ret);
        if (r < 0)
                return r;

        return r > 0 ? ret : 1;
}
