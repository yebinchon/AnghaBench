
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPERM ;
 int SYNTHETIC_ERRNO (int ) ;
 scalar_t__ geteuid () ;
 int log_error_errno (int ,char*) ;

int must_be_root(void) {

        if (geteuid() == 0)
                return 0;

        return log_error_errno(SYNTHETIC_ERRNO(EPERM), "Need to be root.");
}
