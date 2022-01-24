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
struct statfs {int dummy; } ;
typedef  int /*<<< orphan*/  RemoveFlags ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 int BTRFS_REMOVE_QUOTA ; 
 int BTRFS_REMOVE_RECURSIVE ; 
 int EINVAL ; 
 int /*<<< orphan*/  ELOOP ; 
 int ENOENT ; 
 int /*<<< orphan*/  ENOTDIR ; 
 int /*<<< orphan*/  ENOTTY ; 
 int /*<<< orphan*/  EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,...) ; 
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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int FUNC4 (char const*,int) ; 
 int errno ; 
 scalar_t__ FUNC5 (struct statfs*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC7 (char const*,int) ; 
 scalar_t__ FUNC8 (char const*,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*,struct statfs*) ; 
 scalar_t__ FUNC12 (char const*) ; 

int FUNC13(const char *path, RemoveFlags flags) {
        int fd, r;
        struct statfs s;

        FUNC3(path);

        /* For now, don't support dropping subvols when also only dropping directories, since we can't do
         * this race-freely. */
        if (FUNC0(flags, REMOVE_ONLY_DIRECTORIES|REMOVE_SUBVOLUME))
                return -EINVAL;

        /* We refuse to clean the root file system with this call. This is extra paranoia to never cause a
         * really seriously broken system. */
        if (FUNC8(path, "/", AT_SYMLINK_NOFOLLOW))
                return FUNC6(FUNC2(EPERM),
                                       "Attempted to remove entire root file system (\"%s\"), and we can't allow that.",
                                       path);

        if (FUNC0(flags, REMOVE_SUBVOLUME | REMOVE_ROOT | REMOVE_PHYSICAL)) {
                /* Try to remove as subvolume first */
                r = FUNC4(path, BTRFS_REMOVE_RECURSIVE|BTRFS_REMOVE_QUOTA);
                if (r >= 0)
                        return r;

                if (FUNC0(flags, REMOVE_MISSING_OK) && r == -ENOENT)
                        return 0;

                if (!FUNC1(r, -ENOTTY, -EINVAL, -ENOTDIR))
                        return r;

                /* Not btrfs or not a subvolume */
        }

        fd = FUNC7(path, O_RDONLY|O_NONBLOCK|O_DIRECTORY|O_CLOEXEC|O_NOFOLLOW|O_NOATIME);
        if (fd < 0) {
                if (FUNC0(flags, REMOVE_MISSING_OK) && errno == ENOENT)
                        return 0;

                if (!FUNC1(errno, ENOTDIR, ELOOP))
                        return -errno;

                if (FUNC0(flags, REMOVE_ONLY_DIRECTORIES))
                        return 0;

                if (FUNC0(flags, REMOVE_ROOT)) {

                        if (!FUNC0(flags, REMOVE_PHYSICAL)) {
                                if (FUNC11(path, &s) < 0)
                                        return -errno;

                                if (FUNC5(&s))
                                        return FUNC6(FUNC2(EPERM),
                                                               "Attempted to remove files from a disk file system under \"%s\", refusing.",
                                                               path);
                        }

                        if (FUNC12(path) < 0) {
                                if (FUNC0(flags, REMOVE_MISSING_OK) && errno == ENOENT)
                                        return 0;

                                return -errno;
                        }
                }

                return 0;
        }

        r = FUNC9(fd, flags, NULL);

        if (FUNC0(flags, REMOVE_ROOT) &&
            FUNC10(path) < 0 &&
            r >= 0 &&
            (!FUNC0(flags, REMOVE_MISSING_OK) || errno != ENOENT))
                r = -errno;

        return r;
}