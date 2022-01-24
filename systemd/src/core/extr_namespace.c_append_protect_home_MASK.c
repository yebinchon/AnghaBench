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
typedef  int ProtectHome ;
typedef  int /*<<< orphan*/  MountEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PROTECT_HOME_NO 131 
#define  PROTECT_HOME_READ_ONLY 130 
#define  PROTECT_HOME_TMPFS 129 
#define  PROTECT_HOME_YES 128 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  protect_home_read_only_table ; 
 int /*<<< orphan*/  protect_home_tmpfs_table ; 
 int /*<<< orphan*/  protect_home_yes_table ; 

__attribute__((used)) static int FUNC4(MountEntry **p, ProtectHome protect_home, bool ignore_protect) {
        FUNC2(p);

        switch (protect_home) {

        case PROTECT_HOME_NO:
                return 0;

        case PROTECT_HOME_READ_ONLY:
                return FUNC1(p, protect_home_read_only_table, FUNC0(protect_home_read_only_table), ignore_protect);

        case PROTECT_HOME_TMPFS:
                return FUNC1(p, protect_home_tmpfs_table, FUNC0(protect_home_tmpfs_table), ignore_protect);

        case PROTECT_HOME_YES:
                return FUNC1(p, protect_home_yes_table, FUNC0(protect_home_yes_table), ignore_protect);

        default:
                FUNC3("Unexpected ProtectHome= value");
        }
}