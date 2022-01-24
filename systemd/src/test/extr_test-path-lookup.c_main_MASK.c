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
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  UNIT_FILE_GLOBAL ; 
 int /*<<< orphan*/  UNIT_FILE_SYSTEM ; 
 int /*<<< orphan*/  UNIT_FILE_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(int argc, char **argv) {
        FUNC2(LOG_DEBUG);

        FUNC1(UNIT_FILE_SYSTEM);
        FUNC1(UNIT_FILE_USER);
        FUNC1(UNIT_FILE_GLOBAL);

        FUNC3();

        FUNC0(UNIT_FILE_SYSTEM);
        FUNC0(UNIT_FILE_USER);

        return EXIT_SUCCESS;
}