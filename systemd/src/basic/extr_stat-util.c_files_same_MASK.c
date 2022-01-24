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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,struct stat*,int) ; 

int FUNC2(const char *filea, const char *fileb, int flags) {
        struct stat a, b;

        FUNC0(filea);
        FUNC0(fileb);

        if (FUNC1(AT_FDCWD, filea, &a, flags) < 0)
                return -errno;

        if (FUNC1(AT_FDCWD, fileb, &b, flags) < 0)
                return -errno;

        return a.st_dev == b.st_dev &&
               a.st_ino == b.st_ino;
}