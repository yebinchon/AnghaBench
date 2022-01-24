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
typedef  scalar_t__ HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_BADKEY ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 scalar_t__ hkey_main ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    DWORD ret = 0;
    HKEY hkHandle;

    /* successfully close key
     * hkHandle remains changed after call to RegCloseKey
     */
    ret = FUNC1(HKEY_CURRENT_USER, "Software\\Wine\\Test", &hkHandle);
    FUNC2(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);
    ret = FUNC0(hkHandle);
    FUNC2(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);

    /* try to close the key twice */
    ret = FUNC0(hkHandle); /* Windows 95 doesn't mind. */
    FUNC2(ret == ERROR_INVALID_HANDLE || ret == ERROR_SUCCESS,
       "expected ERROR_INVALID_HANDLE or ERROR_SUCCESS, got %d\n", ret);
    
    /* try to close a NULL handle */
    ret = FUNC0(NULL);
    FUNC2(ret == ERROR_INVALID_HANDLE || ret == ERROR_BADKEY, /* Windows 95 returns BADKEY */
       "expected ERROR_INVALID_HANDLE or ERROR_BADKEY, got %d\n", ret);

    /* Check to see if we didn't potentially close our main handle, which could happen on win98 as
     * win98 doesn't give a new handle when the same key is opened.
     * Not re-opening will make some next tests fail.
     */
    if (hkey_main == hkHandle)
    {
        FUNC3("The main handle is most likely closed, so re-opening\n");
        FUNC1( HKEY_CURRENT_USER, "Software\\Wine\\Test", &hkey_main );
    }
}