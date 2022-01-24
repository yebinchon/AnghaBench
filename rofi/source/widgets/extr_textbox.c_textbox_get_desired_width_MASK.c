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
struct TYPE_7__ {scalar_t__ expand; } ;
typedef  TYPE_1__ widget ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  layout; } ;
typedef  TYPE_2__ textbox ;
typedef  int /*<<< orphan*/  RofiDistance ;

/* Variables and functions */
 unsigned int DOT_OFFSET ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_HORIZONTAL ; 
 int TB_AUTOWIDTH ; 
 int TB_INDICATOR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9 ( widget *wid )
{
    if ( wid == NULL ) {
        return 0;
    }
    textbox      *tb    = (textbox *) wid;
    unsigned int offset = ( ( tb->flags & TB_INDICATOR ) ? DOT_OFFSET : 0 );
    if ( wid->expand && tb->flags & TB_AUTOWIDTH ) {
        return FUNC5 ( tb ) + FUNC7 ( wid ) + offset;
    }
    RofiDistance w  = FUNC4 ( FUNC0 ( tb ), "width", 0 );
    int          wi = FUNC1 ( w, ROFI_ORIENTATION_HORIZONTAL );
    if ( wi > 0 ) {
        return wi;
    }
    int padding = FUNC6 ( FUNC0 ( tb ) );
    padding += FUNC8 ( FUNC0 ( tb ) );
    int old_width = FUNC2 ( tb->layout );
    FUNC3 ( tb->layout, -1 );
    int width = FUNC5 ( tb );
    // Restore.
    FUNC3 ( tb->layout, old_width );
    return width + padding + offset;
}