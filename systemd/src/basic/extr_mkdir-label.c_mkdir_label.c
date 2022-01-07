
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int S_IFDIR ;
 int assert (char const*) ;
 int mac_selinux_create_file_clear () ;
 int mac_selinux_create_file_prepare (char const*,int ) ;
 int mac_smack_fix (char const*,int ) ;
 int mkdir_errno_wrapper (char const*,int ) ;

int mkdir_label(const char *path, mode_t mode) {
        int r;

        assert(path);

        r = mac_selinux_create_file_prepare(path, S_IFDIR);
        if (r < 0)
                return r;

        r = mkdir_errno_wrapper(path, mode);
        mac_selinux_create_file_clear();
        if (r < 0)
                return r;

        return mac_smack_fix(path, 0);
}
