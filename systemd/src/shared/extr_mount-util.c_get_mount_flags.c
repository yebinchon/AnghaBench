
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {unsigned long f_flag; } ;
struct libmnt_table {int dummy; } ;
struct libmnt_fs {int dummy; } ;


 int MNT_ITER_FORWARD ;
 int MNT_LINUX_MAP ;
 unsigned long MS_RELATIME ;
 int errno ;
 int log_warning (char*,char const*) ;
 int log_warning_errno (int,char*,char const*) ;
 char* mnt_fs_get_vfs_options (struct libmnt_fs*) ;
 int mnt_get_builtin_optmap (int ) ;
 int mnt_optstr_get_flags (char const*,unsigned long*,int ) ;
 struct libmnt_fs* mnt_table_find_target (struct libmnt_table*,char const*,int ) ;
 scalar_t__ statvfs (char const*,struct statvfs*) ;

__attribute__((used)) static int get_mount_flags(const char *path, unsigned long *flags, struct libmnt_table *table) {
        struct statvfs buf = {};
        struct libmnt_fs *fs = ((void*)0);
        const char *opts = ((void*)0);
        int r = 0;

        fs = mnt_table_find_target(table, path, MNT_ITER_FORWARD);
        if (!fs) {
                log_warning("Could not find '%s' in mount table", path);
                goto fallback;
        }

        opts = mnt_fs_get_vfs_options(fs);
        r = mnt_optstr_get_flags(opts, flags, mnt_get_builtin_optmap(MNT_LINUX_MAP));
        if (r != 0) {
                log_warning_errno(r, "Could not get flags for '%s': %m", path);
                goto fallback;
        }


        *flags &= ~MS_RELATIME;
        return 0;

fallback:
        if (statvfs(path, &buf) < 0)
                return -errno;

        *flags = buf.f_flag;
        return 0;
}
