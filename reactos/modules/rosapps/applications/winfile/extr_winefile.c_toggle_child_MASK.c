#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int /*<<< orphan*/  hMenuOptions; } ;
struct TYPE_3__ {scalar_t__ mode; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ Globals ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MF_BYCOMMAND ; 
 int MF_CHECKED ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ g_fullscreen ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(HWND hwnd, UINT cmd, HWND hchild)
{
	BOOL vis = FUNC1(hchild);

	FUNC0(Globals.hMenuOptions, cmd, vis?MF_BYCOMMAND:MF_BYCOMMAND|MF_CHECKED);

	FUNC2(hchild, vis?SW_HIDE:SW_SHOW);

	if (g_fullscreen.mode)
		FUNC3(hwnd);

	FUNC4(hwnd);
}