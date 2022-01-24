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
typedef  int /*<<< orphan*/  uid_t ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(int argc, char *argv[]) {
        uid_t shift, range;
        int r;

        FUNC6(LOG_DEBUG);

        if (argc != 4) {
                FUNC0("Expected PATH SHIFT RANGE parameters.");
                return EXIT_FAILURE;
        }

        r = FUNC4(argv[2], &shift);
        if (r < 0) {
                FUNC1(r, "Failed to parse UID shift %s.", argv[2]);
                return EXIT_FAILURE;
        }

        r = FUNC3(argv[3], &range);
        if (r < 0) {
                FUNC1(r, "Failed to parse UID range %s.", argv[3]);
                return EXIT_FAILURE;
        }

        r = FUNC5(argv[1], shift, range);
        if (r < 0) {
                FUNC1(r, "Failed to patch directory tree: %m");
                return EXIT_FAILURE;
        }

        FUNC2("Changed: %s", FUNC7(r));

        return EXIT_SUCCESS;
}