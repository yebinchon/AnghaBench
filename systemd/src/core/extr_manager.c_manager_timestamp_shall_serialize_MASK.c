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
typedef  int /*<<< orphan*/  ManagerTimestamp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MANAGER_TIMESTAMP_FINISH ; 
 int /*<<< orphan*/  MANAGER_TIMESTAMP_GENERATORS_FINISH ; 
 int /*<<< orphan*/  MANAGER_TIMESTAMP_GENERATORS_START ; 
 int /*<<< orphan*/  MANAGER_TIMESTAMP_SECURITY_FINISH ; 
 int /*<<< orphan*/  MANAGER_TIMESTAMP_SECURITY_START ; 
 int /*<<< orphan*/  MANAGER_TIMESTAMP_UNITS_LOAD_FINISH ; 
 int /*<<< orphan*/  MANAGER_TIMESTAMP_UNITS_LOAD_START ; 
 int /*<<< orphan*/  MANAGER_TIMESTAMP_USERSPACE ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static bool FUNC2(ManagerTimestamp t) {

        if (!FUNC1())
                return true;

        /* The following timestamps only apply to the host system, hence only serialize them there */
        return !FUNC0(t,
                       MANAGER_TIMESTAMP_USERSPACE, MANAGER_TIMESTAMP_FINISH,
                       MANAGER_TIMESTAMP_SECURITY_START, MANAGER_TIMESTAMP_SECURITY_FINISH,
                       MANAGER_TIMESTAMP_GENERATORS_START, MANAGER_TIMESTAMP_GENERATORS_FINISH,
                       MANAGER_TIMESTAMP_UNITS_LOAD_START, MANAGER_TIMESTAMP_UNITS_LOAD_FINISH);
}