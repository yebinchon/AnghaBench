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
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    DWORD rc;

    rc = FUNC4("xcopy /H/D:20-01-2000 xcopy1 xcopytest");
    FUNC3(rc == 4, "xcopy /H/D:d-m-y test returned rc=%u\n", rc);
    FUNC3(FUNC1("xcopytest\\xcopy1") == INVALID_FILE_ATTRIBUTES,
       "xcopy should not have created xcopytest\\xcopy1\n");

    rc = FUNC4("xcopy /D:01-20-2000/H xcopy1 xcopytest");
    FUNC3(rc == 0, "xcopy /H/D:m-d-y test failed rc=%u\n", rc);
    FUNC3(FUNC1("xcopytest\\xcopy1") != INVALID_FILE_ATTRIBUTES,
       "xcopy did not create xcopytest\\xcopy1\n");
    FUNC0("xcopytest\\xcopy1");

    /* The following test is commented out as under wine it generates
       a recursively deep directory tree (todo_wine)
    rc = runcmd("xcopy /D:1-20-2000/E xcopy1 xcopytest");
    ok(rc == 0, "xcopy /D:m-d-y/E test failed rc=%u\n", rc);
    ok(GetFileAttributesA("xcopytest\\xcopy1") != INVALID_FILE_ATTRIBUTES,
       "xcopy did not create xcopytest\\xcopy1\n");
    DeleteFileA("xcopytest\\xcopy1"); */

    rc = FUNC4("xcopy /D/S xcopytest xcopytest2\\");
    FUNC3(rc == 0, "xcopy /D/S test failed rc=%u\n", rc);
    FUNC3(FUNC1("xcopytest2") == INVALID_FILE_ATTRIBUTES,
       "xcopy copied empty directory incorrectly\n");

    rc = FUNC4("xcopy /D/S/E xcopytest xcopytest2\\");
    FUNC3(rc == 0, "xcopy /D/S/E test failed rc=%u\n", rc);
    FUNC3(FUNC1("xcopytest2") != INVALID_FILE_ATTRIBUTES,
       "xcopy failed to copy empty directory\n");
    FUNC2("xcopytest2");
}