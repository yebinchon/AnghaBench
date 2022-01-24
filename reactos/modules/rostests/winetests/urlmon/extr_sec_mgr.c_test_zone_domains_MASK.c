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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  pCreateUri ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    if(FUNC0()) {
        FUNC3("IE running in Enhanced Security Configuration\n");
        return;
    } else if(!pCreateUri) {
        FUNC7("Skipping zone domain tests, IE too old\n");
        return;
    }

    FUNC5("testing zone domains...\n");

    FUNC4();

    if (!FUNC1()) return;
    FUNC2();
    FUNC6();
}