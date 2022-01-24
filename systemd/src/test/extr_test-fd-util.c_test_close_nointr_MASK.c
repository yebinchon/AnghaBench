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
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void) {
        char name[] = "/tmp/test-test-close_nointr.XXXXXX";
        int fd;

        fd = FUNC2(name);
        FUNC0(fd >= 0);
        FUNC0(FUNC1(fd) >= 0);
        FUNC0(FUNC1(fd) < 0);

        FUNC3(name);
}