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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FILE_ATTRIBUTE_NORMAL ; 
 int FILE_ATTRIBUTE_READONLY ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    DWORD rc;

    FUNC2("xcopy1", FILE_ATTRIBUTE_READONLY);

    rc = FUNC4("xcopy xcopy1 xcopytest");
    FUNC3(rc == 0, "xcopy failed to copy read only file\n");
    FUNC3((FUNC1("xcopytest\\xcopy1") & FILE_ATTRIBUTE_READONLY) != FILE_ATTRIBUTE_READONLY,
       "xcopy should not have copied file permissions\n");
    FUNC2("xcopytest\\xcopy1", FILE_ATTRIBUTE_NORMAL);
    FUNC0("xcopytest\\xcopy1");

    rc = FUNC4("xcopy /K xcopy1 xcopytest");
    FUNC3(rc == 0, "xcopy failed to copy read only file with /k\n");
    FUNC3((FUNC1("xcopytest\\xcopy1") & FILE_ATTRIBUTE_READONLY) == FILE_ATTRIBUTE_READONLY,
       "xcopy did not keep file permissions\n");
    FUNC2("xcopytest\\xcopy1", FILE_ATTRIBUTE_NORMAL);
    FUNC0("xcopytest\\xcopy1");

    FUNC2("xcopy1", FILE_ATTRIBUTE_NORMAL);

    }