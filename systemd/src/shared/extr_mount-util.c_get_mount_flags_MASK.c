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
struct statvfs {unsigned long f_flag; } ;
struct libmnt_table {int dummy; } ;
struct libmnt_fs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MNT_ITER_FORWARD ; 
 int /*<<< orphan*/  MNT_LINUX_MAP ; 
 unsigned long MS_RELATIME ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 char* FUNC2 (struct libmnt_fs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,unsigned long*,int /*<<< orphan*/ ) ; 
 struct libmnt_fs* FUNC5 (struct libmnt_table*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,struct statvfs*) ; 

__attribute__((used)) static int FUNC7(const char *path, unsigned long *flags, struct libmnt_table *table) {
        struct statvfs buf = {};
        struct libmnt_fs *fs = NULL;
        const char *opts = NULL;
        int r = 0;

        fs = FUNC5(table, path, MNT_ITER_FORWARD);
        if (!fs) {
                FUNC0("Could not find '%s' in mount table", path);
                goto fallback;
        }

        opts = FUNC2(fs);
        r = FUNC4(opts, flags, FUNC3(MNT_LINUX_MAP));
        if (r != 0) {
                FUNC1(r, "Could not get flags for '%s': %m", path);
                goto fallback;
        }

        /* relatime is default and trying to set it in an unprivileged container causes EPERM */
        *flags &= ~MS_RELATIME;
        return 0;

fallback:
        if (FUNC6(path, &buf) < 0)
                return -errno;

        *flags = buf.f_flag;
        return 0;
}