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
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  WS_OVERLAPPED ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    HWND hwnd_owndc = FUNC0("owndc_class", NULL, WS_OVERLAPPED,
                                    0, 200, 100, 100,
                                    0, 0, FUNC3(0), NULL );
    HDC dc1, dc2;

    dc1 = FUNC2(hwnd_owndc);
    dc2 = FUNC2(hwnd_owndc);

    FUNC5(dc1 == dc2, "expected owndc dcs to match\n");

    FUNC4(hwnd_owndc, dc2);
    FUNC4(hwnd_owndc, dc1);
    FUNC1(hwnd_owndc);
}