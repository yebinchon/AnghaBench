
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int maybe_setgroups (int ,int *) ;
 scalar_t__ setresgid (int ,int ,int ) ;
 scalar_t__ setresuid (int ,int ,int ) ;

int reset_uid_gid(void) {
        int r;

        r = maybe_setgroups(0, ((void*)0));
        if (r < 0)
                return r;

        if (setresgid(0, 0, 0) < 0)
                return -errno;

        if (setresuid(0, 0, 0) < 0)
                return -errno;

        return 0;
}
