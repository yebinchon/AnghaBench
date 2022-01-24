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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ANSI_CHARSET ; 
 int /*<<< orphan*/  ANTIALIASED_QUALITY ; 
 int /*<<< orphan*/  CLIP_DEFAULT_PRECIS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DEFAULT_PITCH ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FW_BOLD ; 
 int /*<<< orphan*/  FW_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOGPIXELSY ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OUT_DEFAULT_PRECIS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ g_hFont ; 

void FUNC6(HWND hwnd, TCHAR *szFontName, int nPointSize, BOOL fBold)
{
	int		lfHeight;
	HDC		hdc;
	HFONT	hFont;

	hdc = FUNC2(hwnd);

	lfHeight = -FUNC4(nPointSize, FUNC3(hdc, LOGPIXELSY), 72);

	FUNC5(hwnd, hdc);

	hFont = FUNC0(lfHeight, 0, 0, 0, fBold ? FW_BOLD: FW_NORMAL, 0, 0, 0,
		ANSI_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS,
		ANTIALIASED_QUALITY, DEFAULT_PITCH, szFontName);

	if(hFont != 0)
	{
		if(g_hFont != 0)
			FUNC1(g_hFont);

		g_hFont = hFont;
	}
}