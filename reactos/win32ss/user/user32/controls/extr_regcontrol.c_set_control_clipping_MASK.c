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
struct TYPE_3__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  scalar_t__ HRGN ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int LAYOUT_RTL ; 

HRGN FUNC6( HDC hdc, const RECT *rect )
{
    RECT rc = *rect;
    HRGN hrgn = FUNC0( 0, 0, 0, 0 );

    if (FUNC3( hdc, hrgn ) != 1)
    {
        FUNC2( hrgn );
        hrgn = 0;
    }
    FUNC1( hdc, (POINT *)&rc, 2 );
    if (FUNC4( hdc ) & LAYOUT_RTL)  /* compensate for the shifting done by IntersectClipRect */
    {
        rc.left++;
        rc.right++;
    }
    FUNC5( hdc, rc.left, rc.top, rc.right, rc.bottom );
    return hrgn;
}