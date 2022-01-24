#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ expand; int /*<<< orphan*/  enabled; } ;
typedef  TYPE_1__ widget ;
struct TYPE_12__ {scalar_t__ type; int /*<<< orphan*/  children; int /*<<< orphan*/  spacing; } ;
typedef  TYPE_2__ box ;
struct TYPE_13__ {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  RofiDistance ;
typedef  TYPE_3__ GList ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 scalar_t__ ROFI_ORIENTATION_HORIZONTAL ; 
 scalar_t__ TRUE ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7  ( widget *wid )
{
    box *b      = (box *) wid;
    int spacing = FUNC1 ( b->spacing, b->type );
    int width   = 0;

    // Allow user to override.
    RofiDistance w = FUNC4 ( wid, "width", 0 );
    width = FUNC1 ( w, ROFI_ORIENTATION_HORIZONTAL );
    if ( width > 0 ) {
        return width;
    }

    if ( b->type == ROFI_ORIENTATION_HORIZONTAL ) {
        int active_widgets = 0;
        for ( GList *iter = FUNC2 ( b->children ); iter != NULL; iter = FUNC3 ( iter ) ) {
            widget * child = (widget *) iter->data;
            if ( !child->enabled ) {
                continue;
            }
            active_widgets++;
            if ( child->expand == TRUE ) {
                width += FUNC5 ( child );
                continue;
            }
            width += FUNC5 ( child );
        }
        if ( active_widgets > 0 ) {
            width += ( active_widgets - 1 ) * spacing;
        }
    }
    else {
        for ( GList *iter = FUNC2 ( b->children ); iter != NULL; iter = FUNC3 ( iter ) ) {
            widget * child = (widget *) iter->data;
            if ( !child->enabled ) {
                continue;
            }
            width = FUNC0 ( FUNC5 ( child ), width );
        }
    }
    width += FUNC6 ( wid );
    return width;
}