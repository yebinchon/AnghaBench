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
typedef  int ProtectSystem ;
typedef  int /*<<< orphan*/  MountEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PROTECT_SYSTEM_FULL 131 
#define  PROTECT_SYSTEM_NO 130 
#define  PROTECT_SYSTEM_STRICT 129 
#define  PROTECT_SYSTEM_YES 128 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  protect_system_full_table ; 
 int /*<<< orphan*/  protect_system_strict_table ; 
 int /*<<< orphan*/  protect_system_yes_table ; 

__attribute__((used)) static int FUNC4(MountEntry **p, ProtectSystem protect_system, bool ignore_protect) {
        FUNC2(p);

        switch (protect_system) {

        case PROTECT_SYSTEM_NO:
                return 0;

        case PROTECT_SYSTEM_STRICT:
                return FUNC1(p, protect_system_strict_table, FUNC0(protect_system_strict_table), ignore_protect);

        case PROTECT_SYSTEM_YES:
                return FUNC1(p, protect_system_yes_table, FUNC0(protect_system_yes_table), ignore_protect);

        case PROTECT_SYSTEM_FULL:
                return FUNC1(p, protect_system_full_table, FUNC0(protect_system_full_table), ignore_protect);

        default:
                FUNC3("Unexpected ProtectSystem= value");
        }
}