
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int SIZE_MAX ;
 int assert (char**) ;
 scalar_t__ detect_container () ;
 int get_process_cmdline (int,int ,int ,char**) ;
 int read_one_line_file (char*,char**) ;
 char* secure_getenv (char*) ;
 char* strdup (char const*) ;

int proc_cmdline(char **ret) {
        const char *e;
        assert(ret);


        e = secure_getenv("SYSTEMD_PROC_CMDLINE");
        if (e) {
                char *m;

                m = strdup(e);
                if (!m)
                        return -ENOMEM;

                *ret = m;
                return 0;
        }

        if (detect_container() > 0)
                return get_process_cmdline(1, SIZE_MAX, 0, ret);
        else
                return read_one_line_file("/proc/cmdline", ret);
}
