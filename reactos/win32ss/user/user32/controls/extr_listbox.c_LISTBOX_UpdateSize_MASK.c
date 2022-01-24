#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int width; int height; int style; int item_height; int /*<<< orphan*/  self; int /*<<< orphan*/  focus_item; } ;
struct TYPE_11__ {int bottom; int right; int left; int top; } ;
typedef  TYPE_1__ RECT ;
typedef  int LONG ;
typedef  TYPE_2__ LB_DESCR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int LBS_NOINTEGRALHEIGHT ; 
 int LBS_OWNERDRAWVARIABLE ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  SM_CYHSCROLL ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int,int) ; 
 int WS_HSCROLL ; 

__attribute__((used)) static void FUNC10( LB_DESCR *descr )
{
    RECT rect;
    LONG style = FUNC2( descr->self, GWL_STYLE );

    FUNC0( descr->self, &rect );
    if (style & WS_HSCROLL)
        rect.bottom += FUNC1(SM_CYHSCROLL);
    descr->width  = rect.right - rect.left;
    descr->height = rect.bottom - rect.top;
    if (!(descr->style & LBS_NOINTEGRALHEIGHT) && !(descr->style & LBS_OWNERDRAWVARIABLE))
    {
        INT remaining;
        RECT rect;

        FUNC3( descr->self, &rect );
        if(descr->item_height != 0)
            remaining = descr->height % descr->item_height;
        else
            remaining = 0;
        if ((descr->height > descr->item_height) && remaining)
        {
            FUNC9("[%p]: changing height %d -> %d\n",
                  descr->self, descr->height, descr->height - remaining );
            FUNC8( descr->self, 0, 0, 0, rect.right - rect.left,
                          rect.bottom - rect.top - remaining,
                          SWP_NOZORDER | SWP_NOACTIVATE | SWP_NOMOVE );
            return;
        }
    }
    FUNC9("[%p]: new size = %d,%d\n", descr->self, descr->width, descr->height );
    FUNC6( descr );
    FUNC7( descr );

    /* Invalidate the focused item so it will be repainted correctly */
    if (FUNC5( descr, descr->focus_item, &rect ) == 1)
    {
        FUNC4( descr->self, &rect, FALSE );
    }
}