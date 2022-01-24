#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_5__ {int top; int bottom; } ;
typedef  TYPE_1__* LPRECT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  DT_LEFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

VOID FUNC7(HWND hWnd,
	HDC hDc,
	LPRECT pR,
	WCHAR *Text,
	DWORD Flags,
	WCHAR *AddonStr,
	DWORD Addon)
{
	WCHAR Buf[512];

	FUNC4(Buf, AddonStr);
	if(FUNC5(Buf))FUNC3(Buf, L" | ");
	FUNC3(Buf, Text);

	FUNC1( hDc, Buf, FUNC5(Buf), pR, DT_LEFT );

	pR->top+=20;
	pR->bottom+=20;

	if(!FUNC0(hWnd, hDc, pR, Flags | Addon))
	{
		FUNC6("PAINT: DrawCaption failed: %d\n", (int)FUNC2());
	}

	pR->top+=30;
	pR->bottom+=30;
}