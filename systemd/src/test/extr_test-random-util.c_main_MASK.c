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
 int /*<<< orphan*/  RANDOM_ALLOW_RDRAND ; 
 int /*<<< orphan*/  RANDOM_BLOCK ; 
 int /*<<< orphan*/  RANDOM_EXTEND_WITH_PSEUDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(int argc, char **argv) {
        FUNC3(LOG_DEBUG);

        FUNC0(RANDOM_EXTEND_WITH_PSEUDO);
        FUNC0(0);
        FUNC0(RANDOM_BLOCK);
        FUNC0(RANDOM_ALLOW_RDRAND);

        FUNC1();

        FUNC2();

        return 0;
}