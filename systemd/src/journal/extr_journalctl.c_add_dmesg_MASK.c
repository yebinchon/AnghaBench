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
typedef  int /*<<< orphan*/  sd_journal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  arg_dmesg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(sd_journal *j) {
        int r;
        FUNC1(j);

        if (!arg_dmesg)
                return 0;

        r = FUNC4(j, "_TRANSPORT=kernel",
                                 FUNC0("_TRANSPORT=kernel"));
        if (r < 0)
                return FUNC2(r, "Failed to add match: %m");

        r = FUNC3(j);
        if (r < 0)
                return FUNC2(r, "Failed to add conjunction: %m");

        return 0;
}