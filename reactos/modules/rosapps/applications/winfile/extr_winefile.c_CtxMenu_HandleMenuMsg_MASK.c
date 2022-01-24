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
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ s_pctxmenu2 ; 
 scalar_t__ s_pctxmenu3 ; 

__attribute__((used)) static BOOL FUNC3(UINT nmsg, WPARAM wparam, LPARAM lparam)
{
	if (s_pctxmenu3) {
		if (FUNC2(FUNC1(s_pctxmenu3, nmsg, wparam, lparam)))
			return TRUE;
	}

	if (s_pctxmenu2)
		if (FUNC2(FUNC0(s_pctxmenu2, nmsg, wparam, lparam)))
			return TRUE;

	return FALSE;
}