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
typedef  int /*<<< orphan*/  szReg ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  KEY_SOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_GETBEEP ; 
 int /*<<< orphan*/  SPI_SETBEEP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  VAL_BEEP ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 

void
FUNC4(void)
{
    BOOL bOrig, bTemp = 0;
    WCHAR szReg[10];
    DWORD cbSize;

    /* Get original value */
    FUNC0(SPI_GETBEEP, 0, &bOrig, 0);

    /* Value 0 */
    FUNC0(SPI_SETBEEP, 0, NULL, SPIF_UPDATEINIFILE);
    FUNC0(SPI_GETBEEP, 0, &bTemp, 0);
    FUNC2(bTemp == 0);
    cbSize = sizeof(szReg);
    FUNC2(FUNC1(KEY_SOUND, VAL_BEEP, &szReg, &cbSize, NULL) == ERROR_SUCCESS);
    FUNC2(FUNC3(szReg, L"No") == 0);

    /* Value 1 */
    FUNC0(SPI_SETBEEP, 1, NULL, SPIF_UPDATEINIFILE);
    FUNC0(SPI_GETBEEP, 0, &bTemp, 0);
    FUNC2(bTemp == 1);
    cbSize = sizeof(szReg);
    FUNC2(FUNC1(KEY_SOUND, VAL_BEEP, &szReg, &cbSize, NULL) == ERROR_SUCCESS);
    FUNC2(FUNC3(szReg, L"Yes") == 0);

    /* Value 2 */
    FUNC0(SPI_SETBEEP, 2, NULL, SPIF_UPDATEINIFILE);
    FUNC0(SPI_GETBEEP, 0, &bTemp, 0);
    FUNC2(bTemp == 1);
    cbSize = sizeof(szReg);
    FUNC2(FUNC1(KEY_SOUND, VAL_BEEP, &szReg, &cbSize, NULL) == ERROR_SUCCESS);
    FUNC2(FUNC3(szReg, L"Yes") == 0);

    /* Restore original value */
    FUNC0(SPI_SETBEEP, 0, &bOrig, SPIF_UPDATEINIFILE);
}