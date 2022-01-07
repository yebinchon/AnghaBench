
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int LOG_TARGET_KMSG ;
 int PR_SET_DUMPABLE ;
 int SD_LISTEN_FDS_START ;
 int SYNTHETIC_ERRNO (int ) ;
 int arg_compress ;
 int arg_storage ;
 int coredump_storage_to_string (int ) ;
 int log_debug (char*,int ) ;
 int log_error_errno (int,char*) ;
 int log_open () ;
 int log_set_target (int ) ;
 int parse_config () ;
 int prctl (int ,int ) ;
 int process_backtrace (int,char**) ;
 int process_kernel (int,char**) ;
 int process_socket (int ) ;
 int sd_listen_fds (int) ;
 scalar_t__ streq_ptr (char*,char*) ;
 int yes_no (int ) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r;




        log_set_target(LOG_TARGET_KMSG);
        log_open();


        (void) prctl(PR_SET_DUMPABLE, 0);


        (void) parse_config();

        log_debug("Selected storage '%s'.", coredump_storage_to_string(arg_storage));
        log_debug("Selected compression %s.", yes_no(arg_compress));

        r = sd_listen_fds(0);
        if (r < 0)
                return log_error_errno(r, "Failed to determine the number of file descriptors: %m");



        if (r == 0) {
                if (streq_ptr(argv[1], "--backtrace"))
                        return process_backtrace(argc, argv);
                else
                        return process_kernel(argc, argv);
        } else if (r == 1)
                return process_socket(SD_LISTEN_FDS_START);

        return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                               "Received unexpected number of file descriptors.");
}
