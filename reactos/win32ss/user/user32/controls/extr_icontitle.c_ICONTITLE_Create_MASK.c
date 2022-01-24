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
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GWLP_HINSTANCE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ICONTITLE_CLASS_ATOM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WS_BORDER ; 
 int WS_CAPTION ; 
 int WS_CHILD ; 
 int WS_CLIPSIBLINGS ; 
 int WS_DISABLED ; 

HWND FUNC7( HWND owner )
{
    HWND hWnd;
    HINSTANCE instance = (HINSTANCE)FUNC2( owner, GWLP_HINSTANCE );
    LONG style = WS_CLIPSIBLINGS;

    if (!FUNC4(owner)) style |= WS_DISABLED;
    if( FUNC2( owner, GWL_STYLE ) & WS_CHILD )
	hWnd = FUNC0( 0, (LPCSTR)ICONTITLE_CLASS_ATOM, NULL,
                                style | WS_CHILD, 0, 0, 1, 1,
                                FUNC1(owner), 0, instance, NULL );
    else
	hWnd = FUNC0( 0, (LPCSTR)ICONTITLE_CLASS_ATOM, NULL,
                                style, 0, 0, 1, 1,
                                owner, 0, instance, NULL );
    FUNC6( hWnd, owner );  /* MDI depends on this */
    FUNC5( hWnd, GWL_STYLE,
                       FUNC3( hWnd, GWL_STYLE ) & ~(WS_CAPTION | WS_BORDER) );
    return hWnd;
}