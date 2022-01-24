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
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(Manager *manager) {
        int r;
/*  TODO: should_reload, is false if the config dirs do not exist, so
 *        so we can't do this test here, move it to a test for paths_check_timestamps
 *        directly
 *
 *        assert_se(network_should_reload(manager) == true);
*/

        r = FUNC1(manager);
        if (r == -EPERM)
                return r;
        FUNC0(r >= 0);

        FUNC0(FUNC2(manager) == false);

        return 0;
}