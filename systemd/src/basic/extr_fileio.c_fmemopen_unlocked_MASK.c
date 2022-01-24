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
 int /*<<< orphan*/  FSETLOCKING_BYCALLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (void*,size_t,char const*) ; 

FILE* FUNC2(void *buf, size_t size, const char *mode) {
        FILE *f = FUNC1(buf, size, mode);
        if (!f)
                return NULL;

        (void) FUNC0(f, FSETLOCKING_BYCALLER);

        return f;
}