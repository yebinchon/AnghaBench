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
struct TYPE_7__ {int x; int y; int w; int h; } ;
struct TYPE_8__ {int flags; TYPE_1__ widget; int /*<<< orphan*/  layout; int /*<<< orphan*/  emode; } ;
typedef  TYPE_2__ textbox ;

/* Variables and functions */
 unsigned int DOT_OFFSET ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  PANGO_ELLIPSIZE_MIDDLE ; 
 int /*<<< orphan*/  PANGO_ELLIPSIZE_NONE ; 
 int PANGO_SCALE ; 
 int TB_AUTOHEIGHT ; 
 int TB_AUTOWIDTH ; 
 int TB_EDITABLE ; 
 int TB_INDICATOR ; 
 int TB_WRAP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8 ( textbox *tb, int x, int y, int w, int h )
{
    unsigned int offset = ( ( tb->flags & TB_INDICATOR ) ? DOT_OFFSET : 0 );
    if ( tb->flags & TB_AUTOWIDTH ) {
        FUNC3 ( tb->layout, -1 );
        w = FUNC4 ( tb ) + FUNC6 ( FUNC1 ( tb ) ) + offset;
    }
    else {
        // set ellipsize
        if ( ( tb->flags & TB_EDITABLE ) == TB_EDITABLE ) {
            FUNC2 ( tb->layout, PANGO_ELLIPSIZE_MIDDLE );
        }
        else if ( ( tb->flags & TB_WRAP ) != TB_WRAP ) {
            FUNC2 ( tb->layout, tb->emode );
        } else {
            FUNC2 ( tb->layout, PANGO_ELLIPSIZE_NONE );
        }
    }

    if ( tb->flags & TB_AUTOHEIGHT ) {
        // Width determines height!
        int tw = FUNC0 ( 1, w );
        FUNC3 ( tb->layout, PANGO_SCALE * ( tw - FUNC6 ( FUNC1 ( tb ) ) - offset ) );
        int hd = FUNC5 ( tb );
        h = FUNC0 ( hd, h );
    }

    if ( x != tb->widget.x || y != tb->widget.y || w != tb->widget.w || h != tb->widget.h ) {
        tb->widget.x = x;
        tb->widget.y = y;
        tb->widget.h = FUNC0 ( 1, h );
        tb->widget.w = FUNC0 ( 1, w );
    }

    // We always want to update this
    FUNC3 ( tb->layout, PANGO_SCALE * ( tb->widget.w - FUNC6 ( FUNC1 ( tb ) ) - offset ) );
    FUNC7 ( FUNC1 ( tb ) );
}