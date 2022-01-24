#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  HKEY_USERS ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
HKEY
FUNC5(HANDLE hToken)
{
    LONG Error;
    UNICODE_STRING SidString;
    HKEY hKey;

    if (!FUNC1(hToken, &SidString))
    {
        FUNC0("GetUserSidFromToken() failed\n");
        return NULL;
    }

    Error = FUNC2(HKEY_USERS,
                          SidString.Buffer,
                          0,
                          MAXIMUM_ALLOWED,
                          &hKey);
    if (Error != ERROR_SUCCESS)
    {
        FUNC0("RegOpenKeyExW() failed (Error %ld)\n", Error);
        FUNC3(&SidString);
        FUNC4((DWORD)Error);
        return NULL;
    }

    FUNC3(&SidString);

    return hKey;
}