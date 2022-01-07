
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uid_t ;
struct stat {int st_uid; int st_gid; } ;
typedef int gid_t ;


 int EBADE ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int UID_BUSY_BASE ;
 int UID_BUSY_MASK ;
 int assert (int) ;
 int errno ;
 scalar_t__ fchown (int,int,int) ;
 scalar_t__ fstat (int,struct stat*) ;
 int recurse_fd (int,int,struct stat*,int,int) ;
 int safe_close (int) ;

__attribute__((used)) static int fd_patch_uid_internal(int fd, bool donate_fd, uid_t shift, uid_t range) {
        struct stat st;
        int r;

        assert(fd >= 0);






        if ((shift & 0xFFFF) != 0) {

                r = -EOPNOTSUPP;
                goto finish;
        }

        if (shift == UID_BUSY_BASE) {
                r = -EINVAL;
                goto finish;
        }

        if (range != 0x10000) {

                r = -EOPNOTSUPP;
                goto finish;
        }

        if (fstat(fd, &st) < 0) {
                r = -errno;
                goto finish;
        }

        if ((uint32_t) st.st_uid >> 16 != (uint32_t) st.st_gid >> 16) {

                r = -EBADE;
                goto finish;
        }



        if (((uint32_t) (st.st_uid ^ shift) >> 16) == 0)
                return 0;





        if ((st.st_uid & UID_BUSY_MASK) != UID_BUSY_BASE) {
                if (fchown(fd,
                           UID_BUSY_BASE | (st.st_uid & ~UID_BUSY_MASK),
                           (gid_t) UID_BUSY_BASE | (st.st_gid & ~(gid_t) UID_BUSY_MASK)) < 0) {
                        r = -errno;
                        goto finish;
                }
        }

        return recurse_fd(fd, donate_fd, &st, shift, 1);

finish:
        if (donate_fd)
                safe_close(fd);

        return r;
}
