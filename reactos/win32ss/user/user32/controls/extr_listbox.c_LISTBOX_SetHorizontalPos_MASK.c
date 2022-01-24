#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ horz_extent; scalar_t__ width; scalar_t__ horz_pos; int /*<<< orphan*/  self; int /*<<< orphan*/  focus_item; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ LB_DESCR ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int SW_ERASE ; 
 int SW_INVALIDATE ; 
 int SW_SCROLLCHILDREN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6( LB_DESCR *descr, INT pos )
{
    INT diff;

    if (pos > descr->horz_extent - descr->width)
        pos = descr->horz_extent - descr->width;
    if (pos < 0) pos = 0;
    if (!(diff = descr->horz_pos - pos)) return;
    FUNC4("[%p]: new horz pos = %d\n", descr->self, pos );
    descr->horz_pos = pos;
    FUNC2( descr );
    if (FUNC5(diff) < descr->width)
    {
        RECT rect;
        /* Invalidate the focused item so it will be repainted correctly */
        if (FUNC1( descr, descr->focus_item, &rect ) == 1)
            FUNC0( descr->self, &rect, TRUE );
        FUNC3( descr->self, diff, 0, NULL, NULL, 0, NULL,
                          SW_INVALIDATE | SW_ERASE | SW_SCROLLCHILDREN );
    }
    else
        FUNC0( descr->self, NULL, TRUE );
}