
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int dummy; } ;
typedef int RemoveFlags ;


 int AT_SYMLINK_NOFOLLOW ;
 int BTRFS_REMOVE_QUOTA ;
 int BTRFS_REMOVE_RECURSIVE ;
 int EINVAL ;
 int ELOOP ;
 int ENOENT ;
 int ENOTDIR ;
 int ENOTTY ;
 int EPERM ;
 scalar_t__ FLAGS_SET (int ,int) ;
 int IN_SET (int,int ,int,...) ;
 int O_CLOEXEC ;
 int O_DIRECTORY ;
 int O_NOATIME ;
 int O_NOFOLLOW ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int REMOVE_MISSING_OK ;
 int REMOVE_ONLY_DIRECTORIES ;
 int REMOVE_PHYSICAL ;
 int REMOVE_ROOT ;
 int REMOVE_SUBVOLUME ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (char const*) ;
 int btrfs_subvol_remove (char const*,int) ;
 int errno ;
 scalar_t__ is_physical_fs (struct statfs*) ;
 int log_error_errno (int ,char*,char const*) ;
 int open (char const*,int) ;
 scalar_t__ path_equal_or_files_same (char const*,char*,int ) ;
 int rm_rf_children (int,int ,int *) ;
 scalar_t__ rmdir (char const*) ;
 scalar_t__ statfs (char const*,struct statfs*) ;
 scalar_t__ unlink (char const*) ;

int rm_rf(const char *path, RemoveFlags flags) {
        int fd, r;
        struct statfs s;

        assert(path);



        if (FLAGS_SET(flags, REMOVE_ONLY_DIRECTORIES|REMOVE_SUBVOLUME))
                return -EINVAL;



        if (path_equal_or_files_same(path, "/", AT_SYMLINK_NOFOLLOW))
                return log_error_errno(SYNTHETIC_ERRNO(EPERM),
                                       "Attempted to remove entire root file system (\"%s\"), and we can't allow that.",
                                       path);

        if (FLAGS_SET(flags, REMOVE_SUBVOLUME | REMOVE_ROOT | REMOVE_PHYSICAL)) {

                r = btrfs_subvol_remove(path, BTRFS_REMOVE_RECURSIVE|BTRFS_REMOVE_QUOTA);
                if (r >= 0)
                        return r;

                if (FLAGS_SET(flags, REMOVE_MISSING_OK) && r == -ENOENT)
                        return 0;

                if (!IN_SET(r, -ENOTTY, -EINVAL, -ENOTDIR))
                        return r;


        }

        fd = open(path, O_RDONLY|O_NONBLOCK|O_DIRECTORY|O_CLOEXEC|O_NOFOLLOW|O_NOATIME);
        if (fd < 0) {
                if (FLAGS_SET(flags, REMOVE_MISSING_OK) && errno == ENOENT)
                        return 0;

                if (!IN_SET(errno, ENOTDIR, ELOOP))
                        return -errno;

                if (FLAGS_SET(flags, REMOVE_ONLY_DIRECTORIES))
                        return 0;

                if (FLAGS_SET(flags, REMOVE_ROOT)) {

                        if (!FLAGS_SET(flags, REMOVE_PHYSICAL)) {
                                if (statfs(path, &s) < 0)
                                        return -errno;

                                if (is_physical_fs(&s))
                                        return log_error_errno(SYNTHETIC_ERRNO(EPERM),
                                                               "Attempted to remove files from a disk file system under \"%s\", refusing.",
                                                               path);
                        }

                        if (unlink(path) < 0) {
                                if (FLAGS_SET(flags, REMOVE_MISSING_OK) && errno == ENOENT)
                                        return 0;

                                return -errno;
                        }
                }

                return 0;
        }

        r = rm_rf_children(fd, flags, ((void*)0));

        if (FLAGS_SET(flags, REMOVE_ROOT) &&
            rmdir(path) < 0 &&
            r >= 0 &&
            (!FLAGS_SET(flags, REMOVE_MISSING_OK) || errno != ENOENT))
                r = -errno;

        return r;
}
