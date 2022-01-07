
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 int errno ;
 int log_enforcing_errno (int,char*,char const*) ;
 int mac_selinux_use () ;
 int security_getenforce () ;
 scalar_t__ setsockcreatecon (char const*) ;

int mac_selinux_create_socket_prepare(const char *label) {
        return 0;
}
