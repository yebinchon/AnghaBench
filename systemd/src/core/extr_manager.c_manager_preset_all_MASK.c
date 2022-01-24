#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ first_boot; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  UNIT_FILE_PRESET_ENABLE_ONLY ; 
 int /*<<< orphan*/  UNIT_FILE_SYSTEM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(Manager *m) {
        int r;

        FUNC2(m);

        if (m->first_boot <= 0)
                return;

        if (!FUNC0(m))
                return;

        if (FUNC1(m))
                return;

        /* If this is the first boot, and we are in the host system, then preset everything */
        r = FUNC5(UNIT_FILE_SYSTEM, 0, NULL, UNIT_FILE_PRESET_ENABLE_ONLY, NULL, 0);
        if (r < 0)
                FUNC3(r == -EEXIST ? LOG_NOTICE : LOG_WARNING, r,
                               "Failed to populate /etc with preset unit settings, ignoring: %m");
        else
                FUNC4("Populated /etc with preset unit settings.");
}