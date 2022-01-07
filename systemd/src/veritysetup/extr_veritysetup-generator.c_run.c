
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROC_CMDLINE_STRIP_RD_PREFIX ;
 char const* arg_dest ;
 int arg_enabled ;
 int assert_se (char const*) ;
 int create_device () ;
 int determine_devices () ;
 int log_warning_errno (int,char*) ;
 int parse_proc_cmdline_item ;
 int proc_cmdline_parse (int ,int *,int ) ;

__attribute__((used)) static int run(const char *dest, const char *dest_early, const char *dest_late) {
        int r;

        assert_se(arg_dest = dest);

        r = proc_cmdline_parse(parse_proc_cmdline_item, ((void*)0), PROC_CMDLINE_STRIP_RD_PREFIX);
        if (r < 0)
                return log_warning_errno(r, "Failed to parse kernel command line: %m");




        if (!arg_enabled)
                return 0;

        r = determine_devices();
        if (r < 0)
                return r;

        return create_device();
}
