#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_7__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ POINTS ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  PHYSDEV ;
typedef  int INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  META_POLYGON ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

BOOL FUNC4( PHYSDEV dev, const POINT* pt, INT count )
{
    int i;
    POINTS *pts;
    BOOL ret;

    pts = FUNC1( FUNC0(), 0, sizeof(POINTS)*count );
    if(!pts) return FALSE;
    for (i=count;i--;)
    {
        pts[i].x = pt[i].x;
        pts[i].y = pt[i].y;
    }
    ret = FUNC3(dev, META_POLYGON, pts, count);

    FUNC2( FUNC0(), 0, pts );
    return ret;
}