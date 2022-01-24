#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UCHAR ;
struct TYPE_3__ {int member_2; int member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/ * HRGN ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BLACK_BRUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  GRAY_BRUSH ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  RGN_OR ; 
 int /*<<< orphan*/  WHITE_BRUSH ; 
 int /*<<< orphan*/  ghdcDIB32 ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 

void FUNC9()
{
    RECT rc = {0, 0, 8, 8 };
    HRGN hrgn1, hrgn2;
    BOOL bRet;
    UCHAR ajBits[64] = {
        0, 0, 0, 0, 0, 0, 0, 0, // 0000000
        0, 1, 1, 1, 1, 0, 0, 0, // 0****00
        0, 1, 2, 2, 1, 0, 0, 0, // 0*xx**0
        0, 1, 2, 2, 1, 1, 1, 0, // 0*xxx*0
        0, 1, 1, 1, 2, 2, 1, 0, // 0**xx*0
        0, 0, 0, 1, 2, 2, 1, 0, // 00****0
        0, 0, 0, 1, 1, 1, 1, 0, // 0000000
        0, 0, 0, 0, 0, 0, 0, 0  // 0000000
    };
    COLORREF acrColors[16] = {FUNC7(0,0,0), FUNC7(255,255,255), FUNC7(128,128,128), 0};

    FUNC3(ghdcDIB32, &rc, FUNC6(BLACK_BRUSH));

    hrgn1 = FUNC2(1, 1, 5, 5);
    FUNC8(hrgn1 != NULL, "failed to create region\n");

    hrgn2 = FUNC2(3, 3, 7, 7);
    FUNC8(hrgn1 != NULL, "failed to create region\n");

    FUNC1(hrgn1, hrgn1, hrgn2, RGN_OR);

    bRet = FUNC4(ghdcDIB32, hrgn1, FUNC6(GRAY_BRUSH));
    FUNC8(bRet != 0, "FrameRgn failed\n");

    bRet = FUNC5(ghdcDIB32, hrgn1, FUNC6(WHITE_BRUSH), 1, 1);
    FUNC8(bRet != 0, "FrameRgn failed\n");

    FUNC0(ghdcDIB32, 8, 8, ajBits, acrColors);

}