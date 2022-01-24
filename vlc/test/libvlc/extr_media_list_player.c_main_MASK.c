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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  test_defaults_args ; 
 int /*<<< orphan*/  test_defaults_nargs ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8 (void)
{
    FUNC1();

    // There are 6 tests. And they take some times.
    FUNC0(6 * 5);

    FUNC4 (test_defaults_args, test_defaults_nargs);
    FUNC5 (test_defaults_args, test_defaults_nargs);
    FUNC7 (test_defaults_args, test_defaults_nargs);
    FUNC3 (test_defaults_args, test_defaults_nargs);
    FUNC2 (test_defaults_args, test_defaults_nargs);
    FUNC6 (test_defaults_args, test_defaults_nargs);
    return 0;
}