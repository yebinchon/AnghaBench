
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_error_errno (int,char*) ;
 int write_string_file_atomic_label (char*,char*) ;

int create_shutdown_run_nologin_or_warn(void) {
        int r;





        r = write_string_file_atomic_label("/run/nologin",
                                           "System is going down. Unprivileged users are not permitted to log in anymore. "
                                           "For technical details, see pam_nologin(8).");
        if (r < 0)
                return log_error_errno(r, "Failed to create /run/nologin: %m");

        return 0;
}
