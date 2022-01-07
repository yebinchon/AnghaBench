
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct stat {scalar_t__ st_uid; scalar_t__ st_gid; int st_mode; } ;
typedef int mode_t ;
typedef scalar_t__ gid_t ;


 int AT_EMPTY_PATH ;
 int EINVAL ;
 scalar_t__ GID_INVALID ;
 int MODE_INVALID ;
 int S_IFMT ;
 int S_ISLNK (int) ;
 scalar_t__ UID_INVALID ;
 int errno ;
 scalar_t__ fchmod_opath (int,int) ;
 scalar_t__ fchownat (int,char*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ fstat (int,struct stat*) ;

int fchmod_and_chown(int fd, mode_t mode, uid_t uid, gid_t gid) {
        bool do_chown, do_chmod;
        struct stat st;
        if (fstat(fd, &st) < 0)
                return -errno;

        do_chown =
                (uid != UID_INVALID && st.st_uid != uid) ||
                (gid != GID_INVALID && st.st_gid != gid);

        do_chmod =
                !S_ISLNK(st.st_mode) &&
                ((mode != MODE_INVALID && ((st.st_mode ^ mode) & 07777) != 0) ||
                 do_chown);


        if (mode == MODE_INVALID)
                mode = st.st_mode;
        else if ((mode & S_IFMT) != 0 && ((mode ^ st.st_mode) & S_IFMT) != 0)
                return -EINVAL;

        if (do_chown && do_chmod) {
                mode_t minimal = st.st_mode & mode;

                if (((minimal ^ st.st_mode) & 07777) != 0)
                        if (fchmod_opath(fd, minimal & 07777) < 0)
                                return -errno;
        }

        if (do_chown)
                if (fchownat(fd, "", uid, gid, AT_EMPTY_PATH) < 0)
                        return -errno;

        if (do_chmod)
                if (fchmod_opath(fd, mode & 07777) < 0)
                        return -errno;

        return do_chown || do_chmod;
}
