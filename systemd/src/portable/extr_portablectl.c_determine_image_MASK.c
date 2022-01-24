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
 scalar_t__ BUS_TRANSPORT_LOCAL ; 
 int CHASE_NONEXISTENT ; 
 int CHASE_TRAIL_SLASH ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg_quiet ; 
 scalar_t__ arg_transport ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,...) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(const char *image, bool permit_non_existing, char **ret) {
        int r;

        /* If the specified name is a valid image name, we pass it as-is to portabled, which will search for it in the
         * usual search directories. Otherwise we presume it's a path, and will normalize it on the client's side
         * (among other things, to make the path independent of the client's working directory) before passing it
         * over. */

        if (FUNC2(image)) {
                char *c;

                if (!arg_quiet && FUNC3(image, F_OK) >= 0)
                        FUNC6("Ambiguous invocation: current working directory contains file matching non-path argument '%s', ignoring. "
                                    "Prefix argument with './' to force reference to file in current working directory.", image);

                c = FUNC7(image);
                if (!c)
                        return FUNC5();

                *ret = c;
                return 0;
        }

        if (arg_transport != BUS_TRANSPORT_LOCAL)
                return FUNC4(FUNC0(EOPNOTSUPP),
                                       "Operations on images by path not supported when connecting to remote systems.");

        r = FUNC1(image, NULL, CHASE_TRAIL_SLASH | (permit_non_existing ? CHASE_NONEXISTENT : 0), ret, NULL);
        if (r < 0)
                return FUNC4(r, "Cannot normalize specified image path '%s': %m", image);

        return 0;
}