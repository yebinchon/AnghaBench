
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLONE_NEWUTS ;
 int arg_clone_ns_flags ;
 scalar_t__ arg_hostname ;
 int arg_machine ;
 int log_error_errno (int,char*) ;
 int sethostname_idempotent (int ) ;

__attribute__((used)) static int setup_hostname(void) {
        int r;

        if ((arg_clone_ns_flags & CLONE_NEWUTS) == 0)
                return 0;

        r = sethostname_idempotent(arg_hostname ?: arg_machine);
        if (r < 0)
                return log_error_errno(r, "Failed to set hostname: %m");

        return 0;
}
