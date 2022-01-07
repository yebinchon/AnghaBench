
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* arg_dest ;
 int assert_se (char const*) ;
 int generate_symlink () ;
 int log_warning_errno (int,char*) ;
 int parse_proc_cmdline_item ;
 int proc_cmdline_parse (int ,int *,int ) ;

__attribute__((used)) static int run(const char *dest, const char *dest_early, const char *dest_late) {
        int r;

        assert_se(arg_dest = dest_early);

        r = generate_symlink();
        if (r <= 0)
                return r;


        r = proc_cmdline_parse(parse_proc_cmdline_item, ((void*)0), 0);
        if (r < 0)
                log_warning_errno(r, "Failed to parse kernel command line, ignoring: %m");

        return 0;
}
