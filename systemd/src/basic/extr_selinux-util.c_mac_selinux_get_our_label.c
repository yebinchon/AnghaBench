
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;
 int assert (char**) ;
 int errno ;
 int getcon_raw (char**) ;
 int mac_selinux_use () ;

int mac_selinux_get_our_label(char **label) {
        int r = -EOPNOTSUPP;

        assert(label);
        return r;
}
