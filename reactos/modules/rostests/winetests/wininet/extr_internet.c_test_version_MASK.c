#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  version ;
struct TYPE_3__ {int dwMajorVersion; int dwMinorVersion; } ;
typedef  TYPE_1__ INTERNET_VERSION_INFO ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  INTERNET_OPTION_VERSION ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
    INTERNET_VERSION_INFO version;
    DWORD size;
    BOOL res;

    size = sizeof(version);
    res = FUNC1(NULL, INTERNET_OPTION_VERSION, &version, &size);
    FUNC2(res, "Could not get version: %u\n", FUNC0());
    FUNC2(version.dwMajorVersion == 1, "dwMajorVersion=%d, expected 1\n", version.dwMajorVersion);
    FUNC2(version.dwMinorVersion == 2, "dwMinorVersion=%d, expected 2\n", version.dwMinorVersion);
}