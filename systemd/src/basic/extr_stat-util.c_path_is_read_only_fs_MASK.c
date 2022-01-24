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
struct statvfs {int f_flag; } ;

/* Variables and functions */
 int EROFS ; 
 int ST_RDONLY ; 
 int /*<<< orphan*/  W_OK ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int errno ; 
 scalar_t__ FUNC2 (char const*,struct statvfs*) ; 

int FUNC3(const char *path) {
        struct statvfs st;

        FUNC1(path);

        if (FUNC2(path, &st) < 0)
                return -errno;

        if (st.f_flag & ST_RDONLY)
                return true;

        /* On NFS, statvfs() might not reflect whether we can actually
         * write to the remote share. Let's try again with
         * access(W_OK) which is more reliable, at least sometimes. */
        if (FUNC0(path, W_OK) < 0 && errno == EROFS)
                return true;

        return false;
}