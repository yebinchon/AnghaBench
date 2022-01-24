#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  logBrush ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  lbColor; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LPPOINT ;
typedef  TYPE_1__ LOGBRUSH ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBRUSH ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BLACK_BRUSH ; 
 int /*<<< orphan*/  COLOR_ACTIVECAPTION ; 
 int /*<<< orphan*/  COLOR_CAPTIONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int DT_CENTER ; 
 int DT_NOPREFIX ; 
 int DT_SINGLELINE ; 
 int DT_WORDBREAK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  GCLP_HBRBACKGROUND ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANSPARENT ; 
 int /*<<< orphan*/  WHITE_BRUSH ; 
 int WS_CHILD ; 
 scalar_t__ bMultiLineTitle ; 
 scalar_t__ hIconTitleFont ; 

__attribute__((used)) static BOOL FUNC18( HWND hwnd, HWND owner, HDC hDC, BOOL bActive )
{
    RECT rect;
    HFONT hPrevFont;
    HBRUSH hBrush;
    COLORREF textColor = 0;

    if( bActive )
    {
	hBrush = FUNC11(COLOR_ACTIVECAPTION);
	textColor = FUNC10(COLOR_CAPTIONTEXT);
    }
    else
    {
        if( FUNC12( hwnd, GWL_STYLE ) & WS_CHILD )
	{
	    hBrush = (HBRUSH) FUNC4(hwnd, GCLP_HBRBACKGROUND);
	    if( hBrush )
	    {
		INT level;
		LOGBRUSH logBrush;
		FUNC7( hBrush, sizeof(logBrush), &logBrush );
		level = FUNC8(logBrush.lbColor) +
			   FUNC6(logBrush.lbColor) +
			      FUNC3(logBrush.lbColor);
		if( level < (0x7F * 3) )
		    textColor = FUNC14( 0xFF, 0xFF, 0xFF );
	    }
	    else
		hBrush = FUNC9( WHITE_BRUSH );
	}
	else
	{
	    hBrush = FUNC9( BLACK_BRUSH );
	    textColor = FUNC14( 0xFF, 0xFF, 0xFF );
	}
    }

    FUNC5( hwnd, &rect );
    FUNC0( hDC, (LPPOINT)&rect, 2 );
    FUNC2( hDC, &rect, hBrush );

    hPrevFont = FUNC15( hDC, hIconTitleFont );
    if( hPrevFont )
    {
	WCHAR buffer[80];

        INT length = FUNC13( owner, buffer, sizeof(buffer)/sizeof(buffer[0]) );
        FUNC17( hDC, textColor );
        FUNC16( hDC, TRANSPARENT );

        FUNC1( hDC, buffer, length, &rect, DT_CENTER | DT_NOPREFIX |
                   DT_WORDBREAK | ((bMultiLineTitle) ? 0 : DT_SINGLELINE) );

	FUNC15( hDC, hPrevFont );
    }
    return (hPrevFont != 0);
}