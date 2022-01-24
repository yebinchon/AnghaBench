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
typedef  int DWORD ;

/* Variables and functions */
 int DLGC_WANTARROWS ; 
 int DLGC_WANTCHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VK_TAB ; 
 int /*<<< orphan*/  WM_GETDLGCODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

__attribute__((used)) static void FUNC4(void)
{
    DWORD code;
    HWND hTree;

    hTree = FUNC2(0);

    code = FUNC1(hTree, WM_GETDLGCODE, VK_TAB, 0);
    FUNC3(code == (DLGC_WANTCHARS | DLGC_WANTARROWS), "0x%08x\n", code);

    FUNC0(hTree);
}