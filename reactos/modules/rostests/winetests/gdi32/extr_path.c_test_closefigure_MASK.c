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
struct TYPE_3__ {int x; int y; } ;
typedef  TYPE_1__ POINT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void) {
    int nSize, nSizeWitness;
    POINT pos;
    HDC hdc = FUNC5(0);

    FUNC8( hdc, 100, 100, NULL );
    FUNC4( hdc, &pos );
    FUNC10( pos.x == 100 && pos.y == 100, "wrong pos %d,%d\n", pos.x, pos.y );

    FUNC1(hdc);
    FUNC4( hdc, &pos );
    FUNC10( pos.x == 100 && pos.y == 100, "wrong pos %d,%d\n", pos.x, pos.y );
    FUNC8(hdc, 95, 95, NULL);
    FUNC4( hdc, &pos );
    FUNC10( pos.x == 95 && pos.y == 95, "wrong pos %d,%d\n", pos.x, pos.y );
    FUNC7(hdc, 95,  0);
    FUNC4( hdc, &pos );
    FUNC10( pos.x == 95 && pos.y == 0, "wrong pos %d,%d\n", pos.x, pos.y );
    FUNC7(hdc,  0, 95);
    FUNC4( hdc, &pos );
    FUNC10( pos.x == 0 && pos.y == 95, "wrong pos %d,%d\n", pos.x, pos.y );

    FUNC2(hdc);
    FUNC4( hdc, &pos );
    FUNC10( pos.x == 0 && pos.y == 95, "wrong pos %d,%d\n", pos.x, pos.y );
    FUNC3(hdc);
    FUNC4( hdc, &pos );
    FUNC10( pos.x == 0 && pos.y == 95, "wrong pos %d,%d\n", pos.x, pos.y );
    nSize = FUNC6(hdc, NULL, NULL, 0);

    FUNC0(hdc);

    FUNC1(hdc);
    FUNC8(hdc, 95, 95, NULL);
    FUNC7(hdc, 95,  0);
    FUNC7(hdc,  0, 95);

    FUNC3(hdc);
    nSizeWitness = FUNC6(hdc, NULL, NULL, 0);

    /* This test shows CloseFigure does not have to add a point at the end of the path */
    FUNC10(nSize == nSizeWitness, "Wrong number of points, no point should be added by CloseFigure\n");

    FUNC9(0, hdc);
}