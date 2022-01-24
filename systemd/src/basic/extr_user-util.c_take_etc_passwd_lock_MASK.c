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
struct flock {int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_start; int /*<<< orphan*/  l_whence; int /*<<< orphan*/  l_type; } ;

/* Variables and functions */
 char* ETC_PASSWD_LOCK_PATH ; 
 int /*<<< orphan*/  F_SETLKW ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_NOCTTY ; 
 int O_NOFOLLOW ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct flock*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (char const*,int,int) ; 
 char* FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(const char *root) {

        struct flock flock = {
                .l_type = F_WRLCK,
                .l_whence = SEEK_SET,
                .l_start = 0,
                .l_len = 0,
        };

        const char *path;
        int fd, r;

        /* This is roughly the same as lckpwdf(), but not as awful. We
         * don't want to use alarm() and signals, hence we implement
         * our own trivial version of this.
         *
         * Note that shadow-utils also takes per-database locks in
         * addition to lckpwdf(). However, we don't given that they
         * are redundant as they invoke lckpwdf() first and keep
         * it during everything they do. The per-database locks are
         * awfully racy, and thus we just won't do them. */

        if (root)
                path = FUNC3(root, ETC_PASSWD_LOCK_PATH);
        else
                path = ETC_PASSWD_LOCK_PATH;

        fd = FUNC2(path, O_WRONLY|O_CREAT|O_CLOEXEC|O_NOCTTY|O_NOFOLLOW, 0600);
        if (fd < 0)
                return FUNC1(errno, "Cannot open %s: %m", path);

        r = FUNC0(fd, F_SETLKW, &flock);
        if (r < 0) {
                FUNC4(fd);
                return FUNC1(errno, "Locking %s failed: %m", path);
        }

        return fd;
}