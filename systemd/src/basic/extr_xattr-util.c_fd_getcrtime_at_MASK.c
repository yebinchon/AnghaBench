#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int usec_t ;
struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_5__ {int stx_mask; TYPE_1__ stx_btime; } ;
typedef  TYPE_2__ struct_statx ;
typedef  int /*<<< orphan*/  le64_t ;
typedef  int /*<<< orphan*/  le ;

/* Variables and functions */
 int AT_EMPTY_PATH ; 
 int AT_STATX_DONT_SYNC ; 
 int AT_SYMLINK_NOFOLLOW ; 
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (int,int) ; 
 int NSEC_PER_USEC ; 
 int STATX_BTIME ; 
 int USEC_INFINITY ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int,char const*,char*,int /*<<< orphan*/ *,int,int,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

int FUNC6(int dirfd, const char *name, usec_t *ret, int flags) {
        struct_statx sx
#if HAS_FEATURE_MEMORY_SANITIZER
                = {}
#  warning "Explicitly initializing struct statx, to work around msan limitation. Please remove as soon as msan has been updated to not require this."
#endif
                ;
        usec_t a, b;
        le64_t le;
        size_t n;
        int r;

        FUNC1(ret);

        if (flags & ~(AT_EMPTY_PATH|AT_SYMLINK_NOFOLLOW))
                return -EINVAL;

        /* So here's the deal: the creation/birth time (crtime/btime) of a file is a relatively newly supported concept
         * on Linux (or more strictly speaking: a concept that only recently got supported in the API, it was
         * implemented on various file systems on the lower level since a while, but never was accessible). However, we
         * needed a concept like that for vaccuuming algorithms and such, hence we emulated it via a user xattr for a
         * long time. Starting with Linux 4.11 there's statx() which exposes the timestamp to userspace for the first
         * time, where it is available. Thius function will read it, but it tries to keep some compatibility with older
         * systems: we try to read both the crtime/btime and the xattr, and then use whatever is older. After all the
         * concept is useful for determining how "old" a file really is, and hence using the older of the two makes
         * most sense. */

        if (FUNC4(dirfd, FUNC5(name), flags|AT_STATX_DONT_SYNC, STATX_BTIME, &sx) >= 0 &&
            (sx.stx_mask & STATX_BTIME) &&
            sx.stx_btime.tv_sec != 0)
                a = (usec_t) sx.stx_btime.tv_sec * USEC_PER_SEC +
                        (usec_t) sx.stx_btime.tv_nsec / NSEC_PER_USEC;
        else
                a = USEC_INFINITY;

        r = FUNC2(dirfd, name, "user.crtime_usec", &le, sizeof(le), flags, &n);
        if (r >= 0) {
                if (n != sizeof(le))
                        r = -EIO;
                else
                        r = FUNC3(le, &b);
        }
        if (r < 0) {
                if (a != USEC_INFINITY) {
                        *ret = a;
                        return 0;
                }

                return r;
        }

        if (a != USEC_INFINITY)
                *ret = FUNC0(a, b);
        else
                *ret = b;

        return 0;
}