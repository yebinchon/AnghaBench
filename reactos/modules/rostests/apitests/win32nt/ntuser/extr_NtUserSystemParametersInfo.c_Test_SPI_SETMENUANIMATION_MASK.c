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
typedef  int /*<<< orphan*/  dwUserPrefMask ;
typedef  int* PVOID ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  KEY_DESKTOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_GETMENUANIMATION ; 
 int /*<<< orphan*/  SPI_SETMENUANIMATION ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int UPM_MENUANIMATION ; 
 int /*<<< orphan*/  VAL_PREFMASK ; 

void
FUNC3(void)
{
    BOOL bOrig, bTemp = 0;
    DWORD dwUserPrefMask;
    DWORD cbSize;

    /* Get original values */
    FUNC0(SPI_GETMENUANIMATION, 0, &bOrig, 0);

    /* Value 0 */
    FUNC0(SPI_SETMENUANIMATION, 0, NULL, SPIF_UPDATEINIFILE);
    FUNC0(SPI_GETMENUANIMATION, 0, &bTemp, 0);
    FUNC2(bTemp == 0);
    cbSize = sizeof(dwUserPrefMask);
    FUNC2(FUNC1(KEY_DESKTOP, VAL_PREFMASK, &dwUserPrefMask, &cbSize, NULL) == ERROR_SUCCESS);
    FUNC2((dwUserPrefMask & UPM_MENUANIMATION) == 0);

    /* Value 1 */
    FUNC0(SPI_SETMENUANIMATION, 0, (PVOID)1, SPIF_UPDATEINIFILE);
    FUNC0(SPI_GETMENUANIMATION, 0, &bTemp, 0);
    FUNC2(bTemp == 1);
    cbSize = sizeof(dwUserPrefMask);
    FUNC2(FUNC1(KEY_DESKTOP, VAL_PREFMASK, &dwUserPrefMask, &cbSize, NULL) == ERROR_SUCCESS);
    FUNC2((dwUserPrefMask & UPM_MENUANIMATION) != 0);


    /* Restore original values */
    FUNC0(SPI_SETMENUANIMATION, 0, (PVOID)bOrig, SPIF_UPDATEINIFILE);
}