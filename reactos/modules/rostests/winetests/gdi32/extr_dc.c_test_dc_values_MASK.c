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
typedef  int /*<<< orphan*/ * HDC ;
typedef  int COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MM_LOMETRIC ; 
 int /*<<< orphan*/  MM_TEXT ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

__attribute__((used)) static void FUNC10(void)
{
    HDC hdc = FUNC0("DISPLAY", NULL, NULL, NULL);
    COLORREF color;
    int extra;

    FUNC9( hdc != NULL, "CreateDC failed\n" );
    color = FUNC5( hdc, 0x12345678 );
    FUNC9( color == 0xffffff, "initial color %08x\n", color );
    color = FUNC2( hdc );
    FUNC9( color == 0x12345678, "wrong color %08x\n", color );
    color = FUNC5( hdc, 0xffffffff );
    FUNC9( color == 0x12345678, "wrong color %08x\n", color );
    color = FUNC2( hdc );
    FUNC9( color == 0xffffffff, "wrong color %08x\n", color );
    color = FUNC5( hdc, 0 );
    FUNC9( color == 0xffffffff, "wrong color %08x\n", color );
    color = FUNC2( hdc );
    FUNC9( color == 0, "wrong color %08x\n", color );

    color = FUNC8( hdc, 0xffeeddcc );
    FUNC9( color == 0, "initial color %08x\n", color );
    color = FUNC4( hdc );
    FUNC9( color == 0xffeeddcc, "wrong color %08x\n", color );
    color = FUNC8( hdc, 0xffffffff );
    FUNC9( color == 0xffeeddcc, "wrong color %08x\n", color );
    color = FUNC4( hdc );
    FUNC9( color == 0xffffffff, "wrong color %08x\n", color );
    color = FUNC8( hdc, 0 );
    FUNC9( color == 0xffffffff, "wrong color %08x\n", color );
    color = FUNC4( hdc );
    FUNC9( color == 0, "wrong color %08x\n", color );

    extra = FUNC3( hdc );
    FUNC9( extra == 0, "initial extra %d\n", extra );
    FUNC7( hdc, 123 );
    extra = FUNC3( hdc );
    FUNC9( extra == 123, "initial extra %d\n", extra );
    FUNC6( hdc, MM_LOMETRIC );
    extra = FUNC3( hdc );
    FUNC9( extra == 123, "initial extra %d\n", extra );
    FUNC6( hdc, MM_TEXT );
    extra = FUNC3( hdc );
    FUNC9( extra == 123, "initial extra %d\n", extra );

    FUNC1( hdc );
}