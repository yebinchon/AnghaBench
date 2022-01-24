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

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ajBits1 ; 
 int /*<<< orphan*/  ajBits16 ; 
 int /*<<< orphan*/  ajBits24 ; 
 int /*<<< orphan*/  ajBits32 ; 
 int /*<<< orphan*/  ajBits8 ; 
 scalar_t__ hbmp16bpp_a ; 
 scalar_t__ hbmp16bpp_b ; 
 scalar_t__ hbmp1bpp_a ; 
 scalar_t__ hbmp1bpp_b ; 
 scalar_t__ hbmp24bpp_a ; 
 scalar_t__ hbmp24bpp_b ; 
 scalar_t__ hbmp32bpp_a ; 
 scalar_t__ hbmp32bpp_b ; 
 scalar_t__ hbmp8bpp_a ; 
 scalar_t__ hbmp8bpp_b ; 
 scalar_t__ hbmpCompat ; 
 void* hdcDst ; 
 void* hdcSrc ; 
 int /*<<< orphan*/  iDcFormat ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void
FUNC7()
{
    hdcSrc = FUNC2(0);
    hdcDst = FUNC2(0);

    hbmpCompat = FUNC1(FUNC3(0), 4, 2);
    FUNC5(hbmpCompat != 0, "CreateCompatibleBitmap failed\n");

    iDcFormat = FUNC4();
    FUNC6("got iDcFormat = %ld\n", iDcFormat);

    hbmp1bpp_a = FUNC0(4, 2, 1, 1, ajBits1);
    FUNC5(hbmp1bpp_a != 0, "CreateBitmap failed\n");

    hbmp1bpp_b = FUNC0(4, 2, 1, 1, ajBits1);
    FUNC5(hbmp1bpp_b != 0, "CreateBitmap failed\n");

    hbmp8bpp_a = FUNC0(4, 2, 1, 8, ajBits8);
    FUNC5(hbmp8bpp_a != 0, "CreateBitmap failed\n");

    hbmp8bpp_b = FUNC0(4, 2, 1, 8, ajBits8);
    FUNC5(hbmp8bpp_b != 0, "CreateBitmap failed\n");

    hbmp16bpp_a = FUNC0(4, 2, 1, 16, ajBits16);
    FUNC5(hbmp16bpp_a != 0, "CreateBitmap failed\n");

    hbmp16bpp_b = FUNC0(4, 2, 1, 16, ajBits16);
    FUNC5(hbmp16bpp_b != 0, "CreateBitmap failed\n");

    hbmp24bpp_a = FUNC0(4, 2, 1, 24, ajBits24);
    FUNC5(hbmp24bpp_a != 0, "CreateBitmap failed\n");

    hbmp24bpp_b = FUNC0(4, 2, 1, 24, ajBits24);
    FUNC5(hbmp24bpp_b != 0, "CreateBitmap failed\n");

    hbmp32bpp_a = FUNC0(4, 2, 1, 32, ajBits32);
    FUNC5(hbmp32bpp_a != 0, "CreateBitmap failed\n");

    hbmp32bpp_b = FUNC0(4, 2, 1, 32, ajBits32);
    FUNC5(hbmp32bpp_b != 0, "CreateBitmap failed\n");

}