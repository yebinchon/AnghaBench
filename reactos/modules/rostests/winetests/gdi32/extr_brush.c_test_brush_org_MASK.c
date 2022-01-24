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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int) ; 

__attribute__((used)) static void FUNC4( void )
{
    HDC hdc = FUNC0( 0 );
    POINT old, pt;

    FUNC2( hdc, 0, 0, &old );

    FUNC2( hdc, 1, 1, &pt );
    FUNC3( pt.x == 0 && pt.y == 0, "got %d,%d\n", pt.x, pt.y );
    FUNC2( hdc, 0x10000, -1, &pt );
    FUNC3( pt.x == 1 && pt.y == 1, "got %d,%d\n", pt.x, pt.y );
    FUNC2( hdc, old.x, old.y, &pt );
    FUNC3( pt.x == 0x10000 && pt.y == -1, "got %d,%d\n", pt.x, pt.y );

    FUNC1( 0, hdc );
}