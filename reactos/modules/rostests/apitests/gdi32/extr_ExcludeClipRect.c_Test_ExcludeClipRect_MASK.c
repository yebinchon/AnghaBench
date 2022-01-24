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
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/ * HRGN ;
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 int /*<<< orphan*/  CLIPRGN ; 
 int COMPLEXREGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int ERROR ; 
 int ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NULLREGION ; 
 int /*<<< orphan*/  RGN_COPY ; 
 int /*<<< orphan*/  RGN_XOR ; 
 int SIMPLEREGION ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

void FUNC12()
{
    HDC hdc;
    HRGN hrgn, hrgn2;

    hdc = FUNC1(NULL);
    FUNC10(hdc != 0, "CreateCompatibleDC failed, skipping tests.\n");
    if (!hdc) return;

    hrgn2 = FUNC2(0, 0, 0, 0);

    /* Test NULL DC */
    FUNC9(0x12345);
    FUNC11(FUNC5(NULL, 0, 0, 0, 0), ERROR);
    FUNC11(FUNC6(), ERROR_INVALID_HANDLE);

    /* Test invalid DC */
    FUNC9(0x12345);
    FUNC11(FUNC5((HDC)(ULONG_PTR)0x12345, 0, 0, 0, 0), ERROR);
    FUNC11(FUNC6(), ERROR_INVALID_HANDLE);
    FUNC9(0x12345);

    /* Set a clip region */
    hrgn = FUNC2(10, 10, 20, 30);
    FUNC11(FUNC8(hdc, hrgn), NULLREGION); // yeah... it's NULLREGION
    FUNC11(FUNC7(hdc, hrgn2, CLIPRGN), 1);
    FUNC11(FUNC4(hrgn, hrgn2), TRUE); // but in fact it's the region we set

    /* Exclude something outside of the clip region */
    FUNC11(FUNC5(hdc, 0, 0, 1, 1), COMPLEXREGION); // in reality it's a rect region
    FUNC11(FUNC7(hdc, hrgn2, CLIPRGN), 1);
    FUNC11(FUNC4(hrgn, hrgn2), TRUE);

    /* Exclude something on one side of the clip rect */
    FUNC11(FUNC5(hdc, 0, 0, 13, 50), COMPLEXREGION);
    FUNC11(FUNC7(hdc, hrgn2, CLIPRGN), 1);
    FUNC11(FUNC0(hrgn, hrgn2, NULL, RGN_COPY), SIMPLEREGION);

    /* Exclude something on the edge of the clip rect */
    FUNC11(FUNC5(hdc, 0, 0, 15, 15), COMPLEXREGION);
    FUNC11(FUNC7(hdc, hrgn2, CLIPRGN), 1);
    FUNC11(FUNC0(hrgn, hrgn2, NULL, RGN_COPY), COMPLEXREGION);

    /* Exclude everything left */
    FUNC11(FUNC5(hdc, 0, 0, 100, 100), NULLREGION);
    FUNC11(FUNC7(hdc, hrgn2, CLIPRGN), 1);
    FUNC11(FUNC0(hrgn, hrgn2, NULL, RGN_COPY), NULLREGION);

    /* Reset the clip region */
    FUNC11(FUNC8(hdc, NULL), SIMPLEREGION); // makes sense, it's actually the whole region
    FUNC11(FUNC7(hdc, hrgn2, CLIPRGN), 0); // return value says region is NULL
    FUNC11(FUNC5(hdc, 0, 0, 1, 1), NULLREGION);
    FUNC11(FUNC7(hdc, hrgn2, CLIPRGN), 1); // but now we have a region
    FUNC11(FUNC0(hrgn, hrgn2, NULL, RGN_COPY), NULLREGION); // but it's a NULLREGION (aka empty)?

    /* Test negative rect */
    FUNC11(FUNC8(hdc, NULL), SIMPLEREGION);
    FUNC11(FUNC5(hdc, -10, -10, 0, 0), COMPLEXREGION); // this time it's a complex region?
    FUNC11(FUNC7(hdc, hrgn2, CLIPRGN), 1);
    hrgn = FUNC2(0, 0, 1, 1);
    FUNC11(FUNC0(hrgn2, hrgn2, hrgn, RGN_XOR), NULLREGION);

    /* Test rect with high coordinates */
    FUNC11(FUNC8(hdc, NULL), SIMPLEREGION);
    FUNC11(FUNC5(hdc, 100000, 100000, 100010, 100010), COMPLEXREGION); // this time it's a complex region?
    FUNC11(FUNC7(hdc, hrgn2, CLIPRGN), 1);
    hrgn = FUNC2(0, 0, 1, 1);
    FUNC11(FUNC4(hrgn, hrgn2), TRUE);
    FUNC3(hrgn);

    /* Test reversed rect negative, but still above 0 */
    FUNC11(FUNC8(hdc, NULL), SIMPLEREGION);
    FUNC11(FUNC5(hdc, 1, 1, -10, -20), NULLREGION);
    FUNC11(FUNC7(hdc, hrgn2, CLIPRGN), 1);
    hrgn = FUNC2(0, 0, 0, 0);
    FUNC11(FUNC0(hrgn, hrgn2, NULL, RGN_COPY), NULLREGION);

    FUNC11(FUNC6(), 0x12345);

}