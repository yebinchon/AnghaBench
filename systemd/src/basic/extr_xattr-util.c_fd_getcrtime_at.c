
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_5__ {int stx_mask; TYPE_1__ stx_btime; } ;
typedef TYPE_2__ struct_statx ;
typedef int le64_t ;
typedef int le ;


 int AT_EMPTY_PATH ;
 int AT_STATX_DONT_SYNC ;
 int AT_SYMLINK_NOFOLLOW ;
 int EINVAL ;
 int EIO ;
 int MIN (int,int) ;
 int NSEC_PER_USEC ;
 int STATX_BTIME ;
 int USEC_INFINITY ;
 int USEC_PER_SEC ;
 int assert (int*) ;
 int fgetxattrat_fake (int,char const*,char*,int *,int,int,size_t*) ;
 int parse_crtime (int ,int*) ;
 scalar_t__ statx (int,int ,int,int,TYPE_2__*) ;
 int strempty (char const*) ;

int fd_getcrtime_at(int dirfd, const char *name, usec_t *ret, int flags) {
        struct_statx sx




                ;
        usec_t a, b;
        le64_t le;
        size_t n;
        int r;

        assert(ret);

        if (flags & ~(AT_EMPTY_PATH|AT_SYMLINK_NOFOLLOW))
                return -EINVAL;
        if (statx(dirfd, strempty(name), flags|AT_STATX_DONT_SYNC, STATX_BTIME, &sx) >= 0 &&
            (sx.stx_mask & STATX_BTIME) &&
            sx.stx_btime.tv_sec != 0)
                a = (usec_t) sx.stx_btime.tv_sec * USEC_PER_SEC +
                        (usec_t) sx.stx_btime.tv_nsec / NSEC_PER_USEC;
        else
                a = USEC_INFINITY;

        r = fgetxattrat_fake(dirfd, name, "user.crtime_usec", &le, sizeof(le), flags, &n);
        if (r >= 0) {
                if (n != sizeof(le))
                        r = -EIO;
                else
                        r = parse_crtime(le, &b);
        }
        if (r < 0) {
                if (a != USEC_INFINITY) {
                        *ret = a;
                        return 0;
                }

                return r;
        }

        if (a != USEC_INFINITY)
                *ret = MIN(a, b);
        else
                *ret = b;

        return 0;
}
