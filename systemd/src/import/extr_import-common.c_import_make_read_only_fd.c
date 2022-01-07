
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int EINVAL ;
 int ENOTDIR ;
 int ENOTTY ;
 scalar_t__ IN_SET (int,int ,int ,int ) ;
 int assert (int) ;
 int btrfs_subvol_set_read_only_fd (int,int) ;
 int errno ;
 scalar_t__ fchmod (int,int) ;
 int fstat (int,struct stat*) ;
 int log_error_errno (int,char*) ;

int import_make_read_only_fd(int fd) {
        int r;

        assert(fd >= 0);



        r = btrfs_subvol_set_read_only_fd(fd, 1);
        if (IN_SET(r, -ENOTTY, -ENOTDIR, -EINVAL)) {
                struct stat st;





                r = fstat(fd, &st);
                if (r < 0)
                        return log_error_errno(errno, "Failed to stat temporary image: %m");


                if (fchmod(fd, st.st_mode & 07555) < 0)
                        return log_error_errno(errno, "Failed to chmod() final image: %m");

                return 0;

        } else if (r < 0)
                return log_error_errno(r, "Failed to make subvolume read-only: %m");

        return 0;
}
