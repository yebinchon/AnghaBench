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
typedef  scalar_t__ WCHAR ;
typedef  scalar_t__ UNICODE_STRING ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ FUNC0 () ; 
 int MAX_PATH ; 
 int FUNC1 (int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,...) ; 
 int /*<<< orphan*/  SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_GETDESKWALLPAPER ; 
 int /*<<< orphan*/  SPI_SETDESKWALLPAPER ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__*,...) ; 

void
FUNC6(void)
{
    UNICODE_STRING ustrOld, ustrNew;
    WCHAR szOld[MAX_PATH];
    WCHAR szNew[MAX_PATH];

    /* Get old Wallpaper */
    FUNC4(FUNC1(SPI_GETDESKWALLPAPER, MAX_PATH, szOld, 0) == 1);
    FUNC2(&ustrOld, szOld);

    /* Set no Wallpaper */
    FUNC4(FUNC1(SPI_SETDESKWALLPAPER, 0, L"", 0) == 1);
    FUNC4(FUNC1(SPI_GETDESKWALLPAPER, MAX_PATH, szNew, 0) == 1);
    FUNC4(szNew[0] == 0);

    /* Set no Wallpaper 2 */
    FUNC2(&ustrNew, L"");
    FUNC4(FUNC1(SPI_SETDESKWALLPAPER, 0, &ustrNew, 0) == 1);
    FUNC4(FUNC1(SPI_GETDESKWALLPAPER, MAX_PATH, szNew, 0) == 1);
    FUNC4(szNew[0] == 0);

    /* Reset Wallpaper */
    FUNC4(FUNC1(SPI_SETDESKWALLPAPER, 0, NULL, 0) == 1);
    FUNC4(FUNC1(SPI_GETDESKWALLPAPER, MAX_PATH, szNew, 0) == 1);
    FUNC4(FUNC5(szNew, szOld) == 0);

    /* Set new Wallpaper */
    FUNC2(&ustrNew, L"test.bmp");
    FUNC4(FUNC1(SPI_SETDESKWALLPAPER, 0, &ustrNew, 0) == 1);
    FUNC4(FUNC1(SPI_GETDESKWALLPAPER, MAX_PATH, szNew, 0) == 1);
    FUNC4(FUNC5(szNew, L"test.bmp") == 0);

    /* Get Wallpaper, too small buffer  */
    szNew[0] = 0; szNew[1] = 0; szNew[2] = 0;
    FUNC4(FUNC1(SPI_GETDESKWALLPAPER, 3, szNew, 0) == 1);
    FUNC4(szNew[0] != 0);
    FUNC4(szNew[1] != 0);
    FUNC4(szNew[2] != 0);

    /* Set invalid Wallpaper */
    FUNC3(0xdeadbeef);
    FUNC2(&ustrNew, L"*#!!-&");
    FUNC4(FUNC1(SPI_SETDESKWALLPAPER, 0, &ustrNew, 0) == 0);
    FUNC4(FUNC0() == ERROR_FILE_NOT_FOUND);
    FUNC4(FUNC1(SPI_GETDESKWALLPAPER, MAX_PATH, szNew, 0) == 1);
    FUNC4(FUNC5(szNew, L"*#!!-&") == 0);

    /* Restore old Wallpaper */
    FUNC4(FUNC1(SPI_SETDESKWALLPAPER, MAX_PATH, &ustrOld, SPIF_UPDATEINIFILE) == 1);

}