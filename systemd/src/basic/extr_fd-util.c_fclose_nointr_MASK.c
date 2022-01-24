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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(FILE *f) {
        FUNC0(f);

        /* Same as close_nointr(), but for fclose() */

        if (FUNC1(f) == 0)
                return 0;

        if (errno == EINTR)
                return 0;

        return -errno;
}