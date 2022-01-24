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
typedef  int /*<<< orphan*/  usec_t ;
struct timespec {int dummy; } ;
struct stat {struct timespec st_mtim; struct timespec st_atim; } ;
typedef  int /*<<< orphan*/  CopyFlags ;

/* Variables and functions */
 int /*<<< orphan*/  COPY_CRTIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,struct stat*) ; 
 scalar_t__ FUNC5 (int,struct timespec*) ; 

int FUNC6(int fdf, int fdt, CopyFlags flags) {
        struct timespec ut[2];
        struct stat st;

        FUNC1(fdf >= 0);
        FUNC1(fdt >= 0);

        if (FUNC4(fdf, &st) < 0)
                return -errno;

        ut[0] = st.st_atim;
        ut[1] = st.st_mtim;

        if (FUNC5(fdt, ut) < 0)
                return -errno;

        if (FUNC0(flags, COPY_CRTIME)) {
                usec_t crtime;

                if (FUNC2(fdf, &crtime) >= 0)
                        (void) FUNC3(fdt, crtime);
        }

        return 0;
}