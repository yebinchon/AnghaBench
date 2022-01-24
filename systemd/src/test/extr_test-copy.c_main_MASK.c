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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(int argc, char *argv[]) {
        FUNC6(LOG_DEBUG);

        FUNC3();
        FUNC4();
        FUNC5();
        FUNC1();
        FUNC2(argv[0], false, (uint64_t) -1);
        FUNC2(argv[0], true, (uint64_t) -1);
        FUNC2(argv[0], false, 1000); /* smaller than copy buffer size */
        FUNC2(argv[0], true, 1000);
        FUNC2(argv[0], false, 32000); /* larger than copy buffer size */
        FUNC2(argv[0], true, 32000);
        FUNC0();

        return 0;
}