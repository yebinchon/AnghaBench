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
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  RTLD_NOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ) ; 

int FUNC3(int argc, char **argv) {
        void *handle;

        FUNC0(handle = FUNC2(argv[1], RTLD_NOW));
        FUNC0(FUNC1(handle) == 0);

        return EXIT_SUCCESS;
}