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
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int bar ; 
 int baz ; 
 int foo ; 
 int memory ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(int argc, char *argv[]) {
        FUNC3(LOG_INFO);

        FUNC0(memory = FUNC2("hallo"));

        FUNC0(foo == 0 && bar == 0 && baz == 0);
        FUNC1();
        FUNC0(foo == 1 && bar == 2 && baz == 3);

        return EXIT_SUCCESS;
}