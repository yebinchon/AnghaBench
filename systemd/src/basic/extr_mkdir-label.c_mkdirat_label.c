
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int S_IFDIR ;
 int assert (char const*) ;
 int mac_selinux_create_file_clear () ;
 int mac_selinux_create_file_prepare_at (int,char const*,int ) ;
 int mac_smack_fix_at (int,char const*,int ) ;
 int mkdirat_errno_wrapper (int,char const*,int ) ;

int mkdirat_label(int dirfd, const char *path, mode_t mode) {
        int r;

        assert(path);

        r = mac_selinux_create_file_prepare_at(dirfd, path, S_IFDIR);
        if (r < 0)
                return r;

        r = mkdirat_errno_wrapper(dirfd, path, mode);
        mac_selinux_create_file_clear();
        if (r < 0)
                return r;

        return mac_smack_fix_at(dirfd, path, 0);
}
