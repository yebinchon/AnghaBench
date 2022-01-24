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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void) {
        char name[] = "/tmp/test-glob_exists.XXXXXX";
        int fd = -1;
        int r;

        fd = FUNC3(name);
        FUNC0(fd >= 0);
        FUNC1(fd);

        r = FUNC2("/tmp/test-glob_exists*");
        FUNC0(r == 1);

        r = FUNC4(name);
        FUNC0(r == 0);
        r = FUNC2("/tmp/test-glob_exists*");
        FUNC0(r == 0);
}