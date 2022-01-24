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
 int /*<<< orphan*/  GM_ADVANCED ; 
 int /*<<< orphan*/  MM_ANISOTROPIC ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hbitmap ; 
 int /*<<< orphan*/  hbrush ; 
 int /*<<< orphan*/  hfont ; 
 int /*<<< orphan*/  hpen ; 
 int /*<<< orphan*/  hrgn ; 

__attribute__((used)) static
void
FUNC10(HDC hdc)
{
    /* Select spcial Objects */
    FUNC1(hdc, hbrush);
    FUNC1(hdc, hpen);
    FUNC1(hdc, hbitmap);
    FUNC1(hdc, hfont);
    FUNC1(hdc, hrgn);

    /* Colors */
    FUNC2(hdc, FUNC0(12,34,56));
    FUNC3(hdc, FUNC0(23,34,45));

    /* Coordinates */
    FUNC5(hdc, MM_ANISOTROPIC);
    FUNC4(hdc, GM_ADVANCED);
    FUNC9(hdc, 12, 34, NULL);
    FUNC7(hdc, 56, 78, NULL);
    FUNC8(hdc, 123, 456, NULL);
    FUNC6(hdc, 234, 567, NULL);



}