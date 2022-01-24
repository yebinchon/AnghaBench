#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_2__ {char num_sep; int /*<<< orphan*/  spaceSize; int /*<<< orphan*/  hfont; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 TYPE_1__ Globals ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sSpace ; 

__attribute__((used)) static void FUNC5(HWND hwnd)
{
	static const WCHAR s1000[] = {'1','0','0','0','\0'};
	WCHAR b[16];
	HFONT old_font;
	HDC hdc = FUNC0(hwnd);

	if (FUNC1(LOCALE_USER_DEFAULT, 0, s1000, 0, b, 16) > 4)
		Globals.num_sep = b[1];
	else
		Globals.num_sep = '.';

	old_font = FUNC4(hdc, Globals.hfont);
	FUNC2(hdc, sSpace, 1, &Globals.spaceSize);
	FUNC4(hdc, old_font);
	FUNC3(hwnd, hdc);
}