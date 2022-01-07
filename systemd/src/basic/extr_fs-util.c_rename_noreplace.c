
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_SYMLINK_NOFOLLOW ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOSYS ;
 int ENOTTY ;
 int EPERM ;
 int F_OK ;
 int IN_SET (int,int ,int ,int ,...) ;
 int RENAME_NOREPLACE ;
 int errno ;
 scalar_t__ faccessat (int,char const*,int ,int ) ;
 scalar_t__ linkat (int,char const*,int,char const*,int ) ;
 scalar_t__ renameat (int,char const*,int,char const*) ;
 scalar_t__ renameat2 (int,char const*,int,char const*,int ) ;
 scalar_t__ unlinkat (int,char const*,int ) ;

int rename_noreplace(int olddirfd, const char *oldpath, int newdirfd, const char *newpath) {
        int r;


        if (renameat2(olddirfd, oldpath, newdirfd, newpath, RENAME_NOREPLACE) >= 0)
                return 0;



        if (!IN_SET(errno, EINVAL, ENOSYS, ENOTTY))
                return -errno;




        if (linkat(olddirfd, oldpath, newdirfd, newpath, 0) >= 0) {

                if (unlinkat(olddirfd, oldpath, 0) < 0) {
                        r = -errno;
                        (void) unlinkat(newdirfd, newpath, 0);
                        return r;
                }

                return 0;
        }

        if (!IN_SET(errno, EINVAL, ENOSYS, ENOTTY, EPERM))
                return -errno;




        if (faccessat(newdirfd, newpath, F_OK, AT_SYMLINK_NOFOLLOW) >= 0)
                return -EEXIST;
        if (errno != ENOENT)
                return -errno;

        if (renameat(olddirfd, oldpath, newdirfd, newpath) < 0)
                return -errno;

        return 0;
}
