#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct statfs {scalar_t__ f_type; } ;

/* Variables and functions */
 int CLONE_NEWNET ; 
 int ENOTTY ; 
 int EUCLEAN ; 
 int /*<<< orphan*/  NSFS_MAGIC ; 
 int /*<<< orphan*/  NS_GET_NSTYPE ; 
 int /*<<< orphan*/  PROC_SUPER_MAGIC ; 
 int errno ; 
 scalar_t__ FUNC0 (int,struct statfs*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct statfs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,struct statfs*) ; 

int FUNC4(int fd) {
        struct statfs s;
        int r;

        /* Checks whether the specified file descriptor refers to a network namespace. On old kernels there's no nice
         * way to detect that, hence on those we'll return a recognizable error (EUCLEAN), so that callers can handle
         * this somewhat nicely.
         *
         * This function returns > 0 if the fd definitely refers to a network namespace, 0 if it definitely does not
         * refer to a network namespace, -EUCLEAN if we can't determine, and other negative error codes on error. */

        if (FUNC0(fd, &s) < 0)
                return -errno;

        if (!FUNC2(&s, NSFS_MAGIC)) {
                /* On really old kernels, there was no "nsfs", and network namespace sockets belonged to procfs
                 * instead. Handle that in a somewhat smart way. */

                if (FUNC2(&s, PROC_SUPER_MAGIC)) {
                        struct statfs t;

                        /* OK, so it is procfs. Let's see if our own network namespace is procfs, too. If so, then the
                         * passed fd might refer to a network namespace, but we can't know for sure. In that case,
                         * return a recognizable error. */

                        if (FUNC3("/proc/self/ns/net", &t) < 0)
                                return -errno;

                        if (s.f_type == t.f_type)
                                return -EUCLEAN; /* It's possible, we simply don't know */
                }

                return 0; /* No! */
        }

        r = FUNC1(fd, NS_GET_NSTYPE);
        if (r < 0) {
                if (errno == ENOTTY) /* Old kernels didn't know this ioctl, let's also return a recognizable error in that case */
                        return -EUCLEAN;

                return -errno;
        }

        return r == CLONE_NEWNET;
}