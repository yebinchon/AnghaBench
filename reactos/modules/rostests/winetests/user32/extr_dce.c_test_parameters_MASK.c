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
typedef  scalar_t__ HDC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  hwnd_cache ; 
 int /*<<< orphan*/  hwnd_classdc ; 
 int /*<<< orphan*/  hwnd_owndc ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    HDC hdc;

    hdc = FUNC0( hwnd_cache );
    FUNC2( FUNC1( hwnd_owndc, hdc ), "ReleaseDC with wrong window should succeed\n" );

    hdc = FUNC0( hwnd_cache );
    FUNC2( !FUNC1( hwnd_cache, 0 ), "ReleaseDC with wrong HDC should fail\n" );
    FUNC2( FUNC1( hwnd_cache, hdc ), "correct ReleaseDC should succeed\n" );
    FUNC2( !FUNC1( hwnd_cache, hdc ), "second ReleaseDC should fail\n" );

    hdc = FUNC0( hwnd_owndc );
    FUNC2( FUNC1( hwnd_cache, hdc ), "ReleaseDC with wrong window should succeed\n" );
    hdc = FUNC0( hwnd_owndc );
    FUNC2( FUNC1( hwnd_owndc, hdc ), "correct ReleaseDC should succeed\n" );
    FUNC2( FUNC1( hwnd_owndc, hdc ), "second ReleaseDC should succeed\n" );

    hdc = FUNC0( hwnd_classdc );
    FUNC2( FUNC1( hwnd_cache, hdc ), "ReleaseDC with wrong window should succeed\n" );
    hdc = FUNC0( hwnd_classdc );
    FUNC2( FUNC1( hwnd_classdc, hdc ), "correct ReleaseDC should succeed\n" );
    FUNC2( FUNC1( hwnd_classdc, hdc ), "second ReleaseDC should succeed\n" );
}