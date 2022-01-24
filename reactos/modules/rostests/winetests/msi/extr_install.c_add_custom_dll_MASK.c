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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSIDBOPEN_TRANSACT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  customdll ; 
 int /*<<< orphan*/  msifileW ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    MSIHANDLE hdb = 0, record;
    UINT res;

    res = FUNC3(msifileW, MSIDBOPEN_TRANSACT, &hdb);
    FUNC5(res == ERROR_SUCCESS, "failed to open db: %u\n", res);

    res = FUNC6(hdb, 0, "CREATE TABLE `Binary` (`Name` CHAR(72) NOT NULL, `Data` OBJECT NOT NULL PRIMARY KEY `Name`)");
    FUNC5(res == ERROR_SUCCESS, "failed to create Binary table: %u\n", res);

    record = FUNC1(1);
    res = FUNC4(record, 1, customdll);
    FUNC5(res == ERROR_SUCCESS, "failed to add %s to stream: %u\n", customdll, res);

    res = FUNC6(hdb, record, "INSERT INTO `Binary` (`Name`, `Data`) VALUES ('custom.dll', ?)");
    FUNC5(res == ERROR_SUCCESS, "failed to insert into Binary table: %u\n", res);

    res = FUNC2(hdb);
    FUNC5(res == ERROR_SUCCESS, "failed to commit database: %u\n", res);

    FUNC0(record);
    FUNC0(hdb);
}