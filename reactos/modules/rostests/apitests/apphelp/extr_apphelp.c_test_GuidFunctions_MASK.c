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
typedef  int /*<<< orphan*/  guid ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  GUID_DATABASE_DRIVERS ; 
 int /*<<< orphan*/  GUID_DATABASE_MSI ; 
 int /*<<< orphan*/  GUID_DATABASE_SHIM ; 
 int /*<<< orphan*/  GUID_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_UserAssist ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
    GUID guid;
    FUNC2(FUNC4(&GUID_NULL), "expected GUID_NULL to be recognized as NULL GUID\n");
    FUNC2(FUNC4(NULL), "expected NULL to be recognized as NULL GUID\n");
    FUNC2(FUNC4(&test_UserAssist) == 0, "expected a set GUID not to be recognized as NULL GUID\n");

    FUNC1(&guid, 0, sizeof(guid));
    FUNC2(FUNC3(0, &guid) == 0,"Expected SdbGetStandardDatabaseGUID to fail\n");
    FUNC2(FUNC0(&GUID_NULL, &guid), "Expected guid not to be changed\n");

    FUNC2(FUNC3(0x80020000, NULL),"Expected SdbGetStandardDatabaseGUID to succeed\n");

    FUNC1(&guid, 0, sizeof(guid));
    FUNC2(FUNC3(0x80020000, &guid),"Expected SdbGetStandardDatabaseGUID to succeed\n");
    FUNC2(FUNC0(&GUID_DATABASE_MSI, &guid), "Expected guid to equal GUID_DATABASE_MSI, was: %s\n", FUNC5(&guid));

    FUNC1(&guid, 0, sizeof(guid));
    FUNC2(FUNC3(0x80030000, &guid),"Expected SdbGetStandardDatabaseGUID to succeed\n");
    FUNC2(FUNC0(&GUID_DATABASE_SHIM, &guid), "Expected guid to equal GUID_DATABASE_SHIM, was: %s\n", FUNC5(&guid));

    FUNC1(&guid, 0, sizeof(guid));
    FUNC2(FUNC3(0x80040000, &guid),"Expected SdbGetStandardDatabaseGUID to succeed\n");
    FUNC2(FUNC0(&GUID_DATABASE_DRIVERS, &guid), "Expected guid to equal GUID_DATABASE_DRIVERS, was: %s\n", FUNC5(&guid));
}