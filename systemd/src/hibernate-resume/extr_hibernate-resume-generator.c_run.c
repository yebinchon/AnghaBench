
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 char* arg_dest ;
 scalar_t__ arg_noresume ;
 int in_initrd () ;
 int log_debug (char*) ;
 int log_error_errno (int ,char*) ;
 int log_notice (char*) ;
 int log_setup_generator () ;
 int log_warning_errno (int,char*) ;
 int parse_proc_cmdline_item ;
 int proc_cmdline_parse (int ,int *,int ) ;
 int process_resume () ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r = 0;

        log_setup_generator();

        if (argc > 1 && argc != 4)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "This program takes three or no arguments.");

        if (argc > 1)
                arg_dest = argv[1];


        if (!in_initrd()) {
                log_debug("Not running in an initrd, quitting.");
                return 0;
        }

        r = proc_cmdline_parse(parse_proc_cmdline_item, ((void*)0), 0);
        if (r < 0)
                log_warning_errno(r, "Failed to parse kernel command line, ignoring: %m");

        if (arg_noresume) {
                log_notice("Found \"noresume\" on the kernel command line, quitting.");
                return 0;
        }

        return process_resume();
}
