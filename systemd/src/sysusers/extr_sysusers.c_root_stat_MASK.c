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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  arg_root ; 
 int errno ; 
 char* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (char const*,struct stat*) ; 

__attribute__((used)) static int FUNC2(const char *p, struct stat *st) {
        const char *fix;

        fix = FUNC0(arg_root, p);
        if (FUNC1(fix, st) < 0)
                return -errno;

        return 0;
}