
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_IFLNK ;
 int assert (char const*) ;
 int errno ;
 int mac_selinux_create_file_clear () ;
 int mac_selinux_create_file_prepare (char const*,int ) ;
 int mac_smack_fix (char const*,int ) ;
 scalar_t__ symlink (char const*,char const*) ;

int symlink_label(const char *old_path, const char *new_path) {
        int r;

        assert(old_path);
        assert(new_path);

        r = mac_selinux_create_file_prepare(new_path, S_IFLNK);
        if (r < 0)
                return r;

        if (symlink(old_path, new_path) < 0)
                r = -errno;

        mac_selinux_create_file_clear();

        if (r < 0)
                return r;

        return mac_smack_fix(new_path, 0);
}
