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
 int /*<<< orphan*/  ESRCH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(sd_journal *j) {
        int r;

        r = FUNC3(j);
        if (r == 0)
                r = FUNC2(j);
        if (r < 0)
                return FUNC1(r, "Failed to search journal: %m");
        if (r == 0)
                return FUNC1(FUNC0(ESRCH),
                                       "No match found.");
        return r;
}