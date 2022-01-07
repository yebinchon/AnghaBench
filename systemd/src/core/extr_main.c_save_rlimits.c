
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int dummy; } ;


 int RLIMIT_MEMLOCK ;
 int RLIMIT_NOFILE ;
 int assert (struct rlimit*) ;
 int errno ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int log_warning_errno (int ,char*) ;

__attribute__((used)) static void save_rlimits(struct rlimit *saved_rlimit_nofile,
                         struct rlimit *saved_rlimit_memlock) {

        assert(saved_rlimit_nofile);
        assert(saved_rlimit_memlock);

        if (getrlimit(RLIMIT_NOFILE, saved_rlimit_nofile) < 0)
                log_warning_errno(errno, "Reading RLIMIT_NOFILE failed, ignoring: %m");

        if (getrlimit(RLIMIT_MEMLOCK, saved_rlimit_memlock) < 0)
                log_warning_errno(errno, "Reading RLIMIT_MEMLOCK failed, ignoring: %m");
}
