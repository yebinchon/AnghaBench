
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 int errno ;
 int log_enforcing_errno (int,char*,char const*,char const*) ;
 int mac_selinux_use () ;
 scalar_t__ security_getenforce () ;
 scalar_t__ setfilecon (char const*,char const*) ;

int mac_selinux_apply(const char *path, const char *label) {
        return 0;
}
