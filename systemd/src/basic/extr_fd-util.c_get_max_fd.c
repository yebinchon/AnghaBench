
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_max; int rlim_cur; } ;
typedef scalar_t__ rlim_t ;


 scalar_t__ FD_SETSIZE ;
 scalar_t__ INT_MAX ;
 scalar_t__ MAX (int ,int ) ;
 int RLIMIT_NOFILE ;
 scalar_t__ RLIM_INFINITY ;
 int errno ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;

__attribute__((used)) static int get_max_fd(void) {
        struct rlimit rl;
        rlim_t m;




        if (getrlimit(RLIMIT_NOFILE, &rl) < 0)
                return -errno;

        m = MAX(rl.rlim_cur, rl.rlim_max);
        if (m < FD_SETSIZE)
                return FD_SETSIZE-1;

        if (m == RLIM_INFINITY || m > INT_MAX)

                return INT_MAX;

        return (int) (m - 1);
}
