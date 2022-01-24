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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(int argc, char *argv[]) {
        int r;

        FUNC7();
        FUNC6();

        if (argc != 3)
                return FUNC5(FUNC1(EINVAL),
                                       "This program takes two arguments.");
        if (!FUNC0(argv[1], "start", "stop"))
                return FUNC5(FUNC1(EINVAL),
                                       "First argument must be either \"start\" or \"stop\".");

        r = FUNC8();
        if (r < 0)
                return FUNC5(r, "Could not initialize labelling: %m\n");

        FUNC10(0022);

        if (FUNC9(argv[1], "start"))
                return FUNC3(argv[2]);
        if (FUNC9(argv[1], "stop"))
                return FUNC4(argv[2]);
        FUNC2("Unknown verb!");
}