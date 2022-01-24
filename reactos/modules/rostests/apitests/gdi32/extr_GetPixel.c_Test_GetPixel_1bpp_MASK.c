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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 

void FUNC9()
{
    HDC hdc;
    HBITMAP hbmp;
    char buffer[] = {0x80, 0x0};
    COLORREF color;

    hbmp = FUNC0(2,1,1,1,buffer);
    FUNC8(hbmp != NULL, "Failed to create a monochrom bitmap...\n");
    hdc = FUNC1(0);
    hbmp = FUNC5(hdc, hbmp);
    FUNC8(hbmp != NULL, "Could not select the bitmap into the DC.\n");

    color = FUNC4(hdc, 0, 0);
    FUNC8(color == 0xFFFFFF, "Wrong color at 0,0 : 0x%08x\n", (UINT)color);
    color = FUNC4(hdc, 1, 0);
    FUNC8(color == 0, "Wrong color at 1,0 : 0x%08x\n", (UINT)color);

    FUNC6(hdc, 0x0000FF);
    FUNC7(hdc, 0x00FF00);
    color = FUNC4(hdc, 0, 0);
    FUNC8(color == 0xFFFFFF, "Wrong color at 0,0 : 0x%08x\n", (UINT)color);
    color = FUNC4(hdc, 1, 0);
    FUNC8(color == 0, "Wrong color at 1,0 : 0x%08x\n", (UINT)color);

    FUNC6(hdc, 0x12345678);
    FUNC7(hdc, 0x87654321);
    color = FUNC4(hdc, 0, 0);
    FUNC8(color == 0xFFFFFF, "Wrong color at 0,0 : 0x%08x\n", (UINT)color);
    color = FUNC4(hdc, 1, 0);
    FUNC8(color == 0, "Wrong color at 1,0 : 0x%08x\n", (UINT)color);

    hbmp = FUNC5(hdc, hbmp);
    FUNC3(hbmp);
    FUNC2(hdc);
}