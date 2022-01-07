
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROC_CMDLINE_RD_STRICT ;
 int PROC_CMDLINE_STRIP_RD_PREFIX ;
 char const* arg_dest ;
 int assert_se (char const*) ;
 int generate () ;
 int log_warning_errno (int,char*) ;
 int parse ;
 int proc_cmdline_parse (int ,int *,int) ;

__attribute__((used)) static int run(const char *dest, const char *dest_early, const char *dest_late) {
        int r;

        assert_se(arg_dest = dest);

        r = proc_cmdline_parse(parse, ((void*)0), PROC_CMDLINE_RD_STRICT|PROC_CMDLINE_STRIP_RD_PREFIX);
        if (r < 0)
                log_warning_errno(r, "Failed to parse kernel command line, ignoring: %m");

        return generate();
}
