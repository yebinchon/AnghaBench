
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROC_CMDLINE_RD_STRICT ;
 int PROC_CMDLINE_STRIP_RD_PREFIX ;
 scalar_t__ arg_debug_shell ;
 char const* arg_dest ;
 int arg_wants ;
 int assert_se (char const*) ;
 int generate_mask_symlinks () ;
 int generate_wants_symlinks () ;
 int install_debug_shell_dropin (char const*) ;
 int log_oom () ;
 int log_warning_errno (int,char*) ;
 int parse_proc_cmdline_item ;
 int proc_cmdline_parse (int ,int *,int) ;
 int strv_extend (int *,char*) ;

__attribute__((used)) static int run(const char *dest, const char *dest_early, const char *dest_late) {
        int r, q;

        assert_se(arg_dest = dest_early);

        r = proc_cmdline_parse(parse_proc_cmdline_item, ((void*)0), PROC_CMDLINE_RD_STRICT | PROC_CMDLINE_STRIP_RD_PREFIX);
        if (r < 0)
                log_warning_errno(r, "Failed to parse kernel command line, ignoring: %m");

        if (arg_debug_shell) {
                r = strv_extend(&arg_wants, "debug-shell.service");
                if (r < 0)
                        return log_oom();

                install_debug_shell_dropin(arg_dest);
        }

        r = generate_mask_symlinks();
        q = generate_wants_symlinks();

        return r < 0 ? r : q;
}
