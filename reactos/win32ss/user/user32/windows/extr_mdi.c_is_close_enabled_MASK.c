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
typedef  int UINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HMENU ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CS_NOCLOSE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GCL_STYLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MF_BYCOMMAND ; 
 int MF_DISABLED ; 
 int MF_GRAYED ; 
 int /*<<< orphan*/  SC_CLOSE ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC3(HWND hwnd, HMENU hSysMenu)
{
    if (FUNC0(hwnd, GCL_STYLE) & CS_NOCLOSE) return FALSE;

    if (!hSysMenu) hSysMenu = FUNC2(hwnd, FALSE);
    if (hSysMenu)
    {
        UINT state = FUNC1(hSysMenu, SC_CLOSE, MF_BYCOMMAND);
        if (state == 0xFFFFFFFF || (state & (MF_DISABLED | MF_GRAYED)))
            return FALSE;
    }
    return TRUE;
}