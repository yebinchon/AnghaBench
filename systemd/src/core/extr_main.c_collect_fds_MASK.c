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
typedef  char const FDSet ;

/* Variables and functions */
 scalar_t__ arg_serialization ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int FUNC3 (char const**) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (int,char*) ; 

__attribute__((used)) static int FUNC7(FDSet **ret_fds, const char **ret_error_message) {
        int r;

        FUNC0(ret_fds);
        FUNC0(ret_error_message);

        r = FUNC3(ret_fds);
        if (r < 0) {
                *ret_error_message = "Failed to allocate fd set";
                return FUNC6(r, "Failed to allocate fd set: %m");
        }

        FUNC2(*ret_fds, true);

        if (arg_serialization)
                FUNC1(FUNC4(*ret_fds, FUNC5(arg_serialization)) >= 0);

        return 0;
}