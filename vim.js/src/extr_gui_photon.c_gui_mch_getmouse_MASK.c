#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  vimTextArea; } ;
struct TYPE_5__ {short x; short y; } ;
struct TYPE_6__ {TYPE_1__ pos; } ;
typedef  TYPE_2__ PhCursorInfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,short*,short*) ; 
 TYPE_3__ gui ; 

void
FUNC3(int *x, int *y)
{
    PhCursorInfo_t info;
    short ix, iy;

    /* FIXME: does this return the correct position,
     * with respect to the border? */
    FUNC1(FUNC0(NULL), &info);
    FUNC2(gui.vimTextArea , &ix, &iy);

    *x = info.pos.x - ix;
    *y = info.pos.y - iy;
}