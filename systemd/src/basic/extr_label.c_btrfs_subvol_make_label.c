
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_IFDIR ;
 int assert (char const*) ;
 int btrfs_subvol_make (char const*) ;
 int mac_selinux_create_file_clear () ;
 int mac_selinux_create_file_prepare (char const*,int ) ;
 int mac_smack_fix (char const*,int ) ;

int btrfs_subvol_make_label(const char *path) {
        int r;

        assert(path);

        r = mac_selinux_create_file_prepare(path, S_IFDIR);
        if (r < 0)
                return r;

        r = btrfs_subvol_make(path);
        mac_selinux_create_file_clear();

        if (r < 0)
                return r;

        return mac_smack_fix(path, 0);
}
