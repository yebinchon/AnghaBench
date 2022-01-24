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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int EBADFD ; 
 int EISDIR ; 
 int ELOOP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stat const*) ; 

int FUNC4(const struct stat *st) {
        FUNC3(st);

        /* Checks whether the specified stat() structure refers to a regular file. If not returns an appropriate error
         * code. */

        if (FUNC0(st->st_mode))
                return -EISDIR;

        if (FUNC1(st->st_mode))
                return -ELOOP;

        if (!FUNC2(st->st_mode))
                return -EBADFD;

        return 0;
}