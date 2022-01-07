
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;
 int SYNTHETIC_ERRNO (int ) ;
 int log_error_errno (int ,char*) ;

__attribute__((used)) static int dump_syscall_filters(int argc, char *argv[], void *userdata) {
        return log_error_errno(SYNTHETIC_ERRNO(EOPNOTSUPP), "Not compiled with syscall filters, sorry.");
}
