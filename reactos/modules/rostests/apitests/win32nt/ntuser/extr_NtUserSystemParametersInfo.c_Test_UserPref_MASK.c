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
typedef  int /*<<< orphan*/  dwUserPrefOrg ;
typedef  int /*<<< orphan*/  dwUserPref ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int* PVOID ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  KEY_DESKTOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  VAL_PREFMASK ; 

void
FUNC3(UINT uiGet, UINT uiSet, DWORD dwPrefMask)
{
    BOOL bOrig, bTemp = 0;
    DWORD dwUserPref, dwUserPrefOrg;
    DWORD cbSize;

    /* Get original values */
    FUNC0(uiGet, 0, &bOrig, 0);
    cbSize = sizeof(dwUserPrefOrg);
    FUNC1(KEY_DESKTOP, VAL_PREFMASK, &dwUserPrefOrg, &cbSize, NULL);

    /* Value 0 */
    FUNC0(uiSet, 0, NULL, SPIF_UPDATEINIFILE);
    FUNC0(uiGet, 0, &bTemp, 0);
    FUNC2(bTemp == 0);
    cbSize = sizeof(dwUserPref);
    FUNC2(FUNC1(KEY_DESKTOP, VAL_PREFMASK, &dwUserPref, &cbSize, NULL) == ERROR_SUCCESS);
    FUNC2((dwUserPref & dwPrefMask) == 0);
    FUNC2((dwUserPref & (~dwPrefMask)) == (dwUserPrefOrg & (~dwPrefMask)));

    /* Value 1 without Registry */
    FUNC0(uiSet, 0, (PVOID)1, 0);
    FUNC0(uiGet, 0, &bTemp, 0);
    FUNC2(bTemp == 1);
    cbSize = sizeof(dwUserPref);
    FUNC2(FUNC1(KEY_DESKTOP, VAL_PREFMASK, &dwUserPref, &cbSize, NULL) == ERROR_SUCCESS);
    FUNC2((dwUserPref & dwPrefMask) == 0);
    FUNC2((dwUserPref & (~dwPrefMask)) == (dwUserPrefOrg & (~dwPrefMask)));

    /* Value 2 without Registry */
    FUNC0(uiSet, 0, (PVOID)2, 0);
    FUNC0(uiGet, 0, &bTemp, 0);
    FUNC2(bTemp == 1);
    cbSize = sizeof(dwUserPref);
    FUNC2(FUNC1(KEY_DESKTOP, VAL_PREFMASK, &dwUserPref, &cbSize, NULL) == ERROR_SUCCESS);
    FUNC2((dwUserPref & dwPrefMask) == 0);
    FUNC2((dwUserPref & (~dwPrefMask)) == (dwUserPrefOrg & (~dwPrefMask)));

    /* Value 1 with Registry */
    FUNC0(uiSet, 0, (PVOID)1, SPIF_UPDATEINIFILE);
    FUNC0(uiGet, 0, &bTemp, 0);
    FUNC2(bTemp == 1);
    cbSize = sizeof(dwUserPref);
    FUNC2(FUNC1(KEY_DESKTOP, VAL_PREFMASK, &dwUserPref, &cbSize, NULL) == ERROR_SUCCESS);
    FUNC2((dwUserPref & dwPrefMask) == dwPrefMask);
    FUNC2((dwUserPref & (~dwPrefMask)) == (dwUserPrefOrg & (~dwPrefMask)));

    /* Restore original value */
    FUNC0(uiSet, 0, (PVOID)bOrig, SPIF_UPDATEINIFILE);


}