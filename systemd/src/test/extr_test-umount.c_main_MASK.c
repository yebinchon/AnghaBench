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
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(int argc, char **argv) {
        FUNC1(LOG_DEBUG);

        FUNC0(NULL);
        FUNC0("/test-umount/empty.mountinfo");
        FUNC0("/test-umount/garbled.mountinfo");
        FUNC0("/test-umount/rhbug-1554943.mountinfo");

        FUNC2(NULL);
        FUNC2("/test-umount/example.swaps");
}