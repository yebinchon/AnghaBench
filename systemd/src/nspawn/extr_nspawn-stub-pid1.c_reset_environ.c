
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PR_SET_MM ;
 int PR_SET_MM_ENV_END ;
 int PR_SET_MM_ENV_START ;
 int errno ;
 scalar_t__ prctl (int ,int ,unsigned long,int ,int ) ;

__attribute__((used)) static int reset_environ(const char *new_environment, size_t length) {
        unsigned long start, end;

        start = (unsigned long) new_environment;
        end = start + length;

        if (prctl(PR_SET_MM, PR_SET_MM_ENV_START, start, 0, 0) < 0)
                return -errno;

        if (prctl(PR_SET_MM, PR_SET_MM_ENV_END, end, 0, 0) < 0)
                return -errno;

        return 0;
}
