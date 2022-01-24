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
 int /*<<< orphan*/  F_OK ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void FUNC5(void) {
        int r;
        r = FUNC3(NULL);

        if (FUNC1("/etc/adjtime", F_OK) == 0) {
                FUNC4("/etc/adjtime exists, clock_is_localtime() == %i", r);
                /* if /etc/adjtime exists we expect some answer, no error or
                 * crash */
                FUNC2(FUNC0(r, 0, 1));
        } else
                /* default is UTC if there is no /etc/adjtime */
                FUNC2(r == 0);
}