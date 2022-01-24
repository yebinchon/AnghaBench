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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MWT_IDENTITY ; 
 int /*<<< orphan*/  MWT_LEFTMULTIPLY ; 
 int /*<<< orphan*/  MWT_RIGHTMULTIPLY ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

__attribute__((used)) static void FUNC5(void)
{
    HDC hdc = FUNC0(0);
    int ret;

    ret = FUNC3(hdc, GM_ADVANCED);
    FUNC4(ret, "ret = %d\n", ret);

    ret = FUNC1(hdc, NULL, MWT_IDENTITY);
    FUNC4(ret, "ret = %d\n", ret);

    ret = FUNC1(hdc, NULL, MWT_LEFTMULTIPLY);
    FUNC4(!ret, "ret = %d\n", ret);

    ret = FUNC1(hdc, NULL, MWT_RIGHTMULTIPLY);
    FUNC4(!ret, "ret = %d\n", ret);

    FUNC2(0, hdc);
}