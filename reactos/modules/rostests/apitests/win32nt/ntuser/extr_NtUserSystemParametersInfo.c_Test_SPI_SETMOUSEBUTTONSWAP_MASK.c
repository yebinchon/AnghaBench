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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_MOUSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SM_SWAPBUTTON ; 
 int /*<<< orphan*/  SPIF_UPDATEINIFILE ; 
 int /*<<< orphan*/  SPI_SETMOUSEBUTTONSWAP ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  VAL_SWAP ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 

void
FUNC5(void)
{
    BOOL bOrig, bTemp = 0;
    WCHAR szReg[10];
    DWORD cbSize;

    /* Get original value */
    bOrig = FUNC0(SM_SWAPBUTTON);

    /* Value 0 */
    FUNC1(SPI_SETMOUSEBUTTONSWAP, 0, NULL, SPIF_UPDATEINIFILE);
    bTemp = FUNC0(SM_SWAPBUTTON);
    FUNC3(bTemp == 0);
    cbSize = sizeof(szReg);
    FUNC3(FUNC2(KEY_MOUSE, VAL_SWAP, &szReg, &cbSize, NULL) == ERROR_SUCCESS);
    FUNC3(FUNC4(szReg, L"0") == 0);

    /* Value 1 */
    FUNC1(SPI_SETMOUSEBUTTONSWAP, 1, NULL, SPIF_UPDATEINIFILE);
    bTemp = FUNC0(SM_SWAPBUTTON);
    FUNC3(bTemp == 1);
    cbSize = sizeof(szReg);
    FUNC3(FUNC2(KEY_MOUSE, VAL_SWAP, &szReg, &cbSize, NULL) == ERROR_SUCCESS);
    FUNC3(FUNC4(szReg, L"1") == 0);

    /* Value 2 */
    FUNC1(SPI_SETMOUSEBUTTONSWAP, 2, NULL, SPIF_UPDATEINIFILE);
    bTemp = FUNC0(SM_SWAPBUTTON);
    FUNC3(bTemp == 1);
    cbSize = sizeof(szReg);
    FUNC3(FUNC2(KEY_MOUSE, VAL_SWAP, &szReg, &cbSize, NULL) == ERROR_SUCCESS);
    FUNC3(FUNC4(szReg, L"2") == 0);

    /* Value -1 */
    FUNC1(SPI_SETMOUSEBUTTONSWAP, -1, NULL, SPIF_UPDATEINIFILE);
    bTemp = FUNC0(SM_SWAPBUTTON);
    FUNC3(bTemp == 1);
    cbSize = sizeof(szReg);
    FUNC3(FUNC2(KEY_MOUSE, VAL_SWAP, &szReg, &cbSize, NULL) == ERROR_SUCCESS);
    FUNC3(FUNC4(szReg, L"-1") == 0);

    /* Restore original value */
    FUNC1(SPI_SETMOUSEBUTTONSWAP, bOrig, 0, SPIF_UPDATEINIFILE);


}