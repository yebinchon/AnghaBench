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
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/ * HRGN ;
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 int CLIPRGN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int ERROR_INVALID_HANDLE ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void FUNC11()
{
    HDC hdc;
    HRGN hrgn;
    INT ret;

    hdc = FUNC0(0);
    if (!hdc)
    {
        FUNC10("Coun't create a dc\n");
        return;
    }

    hrgn = FUNC1(11, 17, 23, 42);
    if (!hrgn)
    {
        FUNC10("Coun't create a region\n");
        return;
    }

    FUNC6(0xbadbad00);
    ret = FUNC5(NULL, NULL, 0);
    FUNC9(ret, -1);
    FUNC7((FUNC4() == 0xbadbad00) || (FUNC4() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", FUNC4());

    FUNC6(0xbadbad00);
    ret = FUNC5(NULL, NULL, CLIPRGN);
    FUNC9(ret, -1);
    FUNC7((FUNC4() == 0xbadbad00) || (FUNC4() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", FUNC4());

    FUNC6(0xbadbad00);
    ret = FUNC5(NULL, hrgn, 0);
    FUNC9(ret, -1);
    FUNC7((FUNC4() == 0xbadbad00) || (FUNC4() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", FUNC4());

    FUNC6(0xbadbad00);
    ret = FUNC5(NULL, hrgn, CLIPRGN);
    FUNC9(ret, -1);
    FUNC7((FUNC4() == 0xbadbad00) || (FUNC4() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", FUNC4());

    FUNC6(0xbadbad00);
    ret = FUNC5(hdc, NULL, 0);
    FUNC9(ret, 0);
    FUNC8(0xbadbad00);

    FUNC6(0xbadbad00);
    ret = FUNC5(hdc, NULL, CLIPRGN);
    FUNC9(ret, 0);
    FUNC8(0xbadbad00);

    FUNC6(0xbadbad00);
    ret = FUNC5(hdc, hrgn, 0);
    FUNC9(ret, 0);
    FUNC8(0xbadbad00);
#if 0 // this is vista+
    SetLastError(0xbadbad00);
    ret = GetRandomRgn(hdc, hrgn, 5);
    ok_int(ret, 1);
    ok_err(0xbadbad00);
#endif
    FUNC6(0xbadbad00);
    ret = FUNC5(hdc, hrgn, 6);
    FUNC9(ret, 0);
    FUNC8(0xbadbad00);

    FUNC6(0xbadbad00);
    ret = FUNC5(hdc, hrgn, 27);
    FUNC9(ret, 0);
    FUNC8(0xbadbad00);

    FUNC6(0xbadbad00);
    ret = FUNC5(hdc, hrgn, -1);
    FUNC9(ret, 0);
    FUNC8(0xbadbad00);

    FUNC6(0xbadbad00);
    ret = FUNC5(hdc, hrgn, CLIPRGN);
    FUNC9(ret, 0);
    FUNC8(0xbadbad00);

    FUNC6(0xbadbad00);
    ret = FUNC5((HDC)0x123, hrgn, CLIPRGN);
    FUNC9(ret, -1);
    FUNC7((FUNC4() == 0xbadbad00) || (FUNC4() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", FUNC4());

    FUNC3(hrgn);
    FUNC2(hdc);
}