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
#define  ANY_VIRTUALIZATION 132 
#define  ONLY_CHROOT 131 
#define  ONLY_CONTAINER 130 
#define  ONLY_PRIVATE_USERS 129 
#define  ONLY_VM 128 
 int VIRTUALIZATION_NONE ; 
 int arg_mode ; 
 int /*<<< orphan*/  arg_quiet ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(int argc, char *argv[]) {
        int r;

        /* This is mostly intended to be used for scripts which want
         * to detect whether we are being run in a virtualized
         * environment or not */

        FUNC6(true);
        FUNC5();
        FUNC4();

        r = FUNC7(argc, argv);
        if (r <= 0)
                return r;

        switch (arg_mode) {
        case ONLY_VM:
                r = FUNC2();
                if (r < 0)
                        return FUNC3(r, "Failed to check for VM: %m");
                break;

        case ONLY_CONTAINER:
                r = FUNC0();
                if (r < 0)
                        return FUNC3(r, "Failed to check for container: %m");
                break;

        case ONLY_CHROOT:
                r = FUNC9();
                if (r < 0)
                        return FUNC3(r, "Failed to check for chroot() environment: %m");
                return !r;

        case ONLY_PRIVATE_USERS:
                r = FUNC10();
                if (r < 0)
                        return FUNC3(r, "Failed to check for user namespace: %m");
                return !r;

        case ANY_VIRTUALIZATION:
        default:
                r = FUNC1();
                if (r < 0)
                        return FUNC3(r, "Failed to check for virtualization: %m");
                break;
        }

        if (!arg_quiet)
                FUNC8(FUNC11(r));

        return r == VIRTUALIZATION_NONE;
}