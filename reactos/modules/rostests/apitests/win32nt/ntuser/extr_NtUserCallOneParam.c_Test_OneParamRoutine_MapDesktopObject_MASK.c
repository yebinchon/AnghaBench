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
typedef  scalar_t__ HWND ;
typedef  scalar_t__ HMENU ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  _ONEPARAM_ROUTINE_MAPDEKTOPOBJECT ; 

void
FUNC5(void) /* 0x30 */
{
    DWORD pObject;
    HWND hWnd;
    HMENU hMenu;

    hWnd = FUNC2();
    pObject = FUNC3((DWORD)hWnd, _ONEPARAM_ROUTINE_MAPDEKTOPOBJECT);
    FUNC4(pObject > 0);
    FUNC4(pObject < 0x80000000);

    hMenu = FUNC0();
    pObject = FUNC3((DWORD)hMenu, _ONEPARAM_ROUTINE_MAPDEKTOPOBJECT);
    FUNC1(hMenu);
    FUNC4(pObject > 0);
    FUNC4(pObject < 0x80000000);

}