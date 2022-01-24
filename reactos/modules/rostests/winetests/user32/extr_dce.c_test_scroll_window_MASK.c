#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int left; int top; int right; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int SW_ERASE ; 
 int SW_INVALIDATE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwnd_owndc ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC12(void)
{
    PAINTSTRUCT ps;
    HDC hdc;
    RECT clip, rect;

    /* ScrollWindow uses the window DC, ScrollWindowEx doesn't */

    FUNC9( hwnd_owndc );
    FUNC5( &clip, 25, 25, 50, 50 );
    FUNC3( hwnd_owndc, -5, -10, NULL, &clip );
    hdc = FUNC0( hwnd_owndc, &ps );
    FUNC6( &rect );
    FUNC2( hdc, &rect );
    FUNC10( rect.left >= 25 && rect.top >= 25 && rect.right <= 50 && rect.bottom <= 50,
        "invalid clip box %s\n", FUNC11( &rect ));
    FUNC1( hwnd_owndc, &ps );

    FUNC7( hdc, 2, 3, NULL );
    FUNC8( hdc, 30, 20, NULL );

    FUNC3( hwnd_owndc, -5, -10, NULL, &clip );
    hdc = FUNC0( hwnd_owndc, &ps );
    FUNC6( &rect );
    FUNC2( hdc, &rect );
    FUNC10( rect.left >= 25 && rect.top >= 25 && rect.right <= 50 && rect.bottom <= 50,
        "invalid clip box %s\n", FUNC11( &rect ));
    FUNC1( hwnd_owndc, &ps );

    FUNC4( hwnd_owndc, -5, -10, NULL, &clip, 0, NULL, SW_INVALIDATE | SW_ERASE );
    hdc = FUNC0( hwnd_owndc, &ps );
    FUNC6( &rect );
    FUNC2( hdc, &rect );
    FUNC10( rect.left >= -5 && rect.top >= 5 && rect.right <= 20 && rect.bottom <= 30,
        "invalid clip box %s\n", FUNC11( &rect ));
    FUNC1( hwnd_owndc, &ps );

    FUNC7( hdc, 1, 1, NULL );
    FUNC8( hdc, 0, 0, NULL );

    FUNC4( hwnd_owndc, -5, -10, NULL, &clip, 0, NULL, SW_INVALIDATE | SW_ERASE );
    hdc = FUNC0( hwnd_owndc, &ps );
    FUNC6( &rect );
    FUNC2( hdc, &rect );
    FUNC10( rect.left >= 25 && rect.top >= 25 && rect.right <= 50 && rect.bottom <= 50,
        "invalid clip box %s\n", FUNC11( &rect ));
    FUNC1( hwnd_owndc, &ps );
}