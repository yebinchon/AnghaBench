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
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  HKEY_USERS ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static
BOOL
FUNC6(HANDLE hToken)
{
    UNICODE_STRING SidString;
    HKEY hKey;

    FUNC0("CheckForLoadedProfile() called\n");

    /* Get the user SID string */
    if (!FUNC2(hToken, &SidString))
    {
        FUNC1("GetUserSidStringFromToken() failed\n");
        return FALSE;
    }

    if (FUNC4(HKEY_USERS,
                      SidString.Buffer,
                      0,
                      MAXIMUM_ALLOWED,
                      &hKey))
    {
        FUNC0("Profile not loaded\n");
        FUNC5(&SidString);
        return FALSE;
    }

    FUNC3(hKey);

    FUNC5(&SidString);

    FUNC0("Profile already loaded\n");

    return TRUE;
}