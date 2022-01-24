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
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  DC_BRUSH ; 
 int /*<<< orphan*/  DC_PEN ; 
 int /*<<< orphan*/  DEFAULT_BITMAP ; 
 int /*<<< orphan*/  DEFAULT_GUI_FONT ; 
 int /*<<< orphan*/  GM_COMPATIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MM_ISOTROPIC ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hrgn2 ; 

__attribute__((used)) static
void
FUNC11(HDC hdc)
{
    /* Select spcial Objects */
    FUNC2(hdc, FUNC0(DC_BRUSH));
    FUNC2(hdc, FUNC0(DC_PEN));
    FUNC2(hdc, FUNC0(DEFAULT_BITMAP));
    FUNC2(hdc, FUNC0(DEFAULT_GUI_FONT));
    FUNC2(hdc, hrgn2);

    /* Colors */
    FUNC3(hdc, FUNC1(65,43,21));
    FUNC4(hdc, FUNC1(54,43,32));

    /* Coordinates */
    FUNC6(hdc, MM_ISOTROPIC);
    FUNC5(hdc, GM_COMPATIBLE);
    FUNC10(hdc, 43, 21, NULL);
    FUNC8(hdc, 87, 65, NULL);
    FUNC9(hdc, 654, 321, NULL);
    FUNC7(hdc, 765, 432, NULL);


}