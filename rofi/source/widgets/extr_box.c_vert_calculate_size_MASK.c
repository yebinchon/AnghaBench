#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ enabled; scalar_t__ expand; scalar_t__ h; } ;
typedef  TYPE_2__ widget ;
struct TYPE_14__ {int /*<<< orphan*/  h; } ;
struct TYPE_16__ {int max_size; int /*<<< orphan*/  children; TYPE_1__ widget; int /*<<< orphan*/  spacing; } ;
typedef  TYPE_3__ box ;
struct TYPE_17__ {scalar_t__ data; } ;
typedef  TYPE_4__ GList ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_VERTICAL ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int) ; 

__attribute__((used)) static void FUNC14 ( box *b )
{
    int spacing           = FUNC1 ( b->spacing, ROFI_ORIENTATION_VERTICAL );
    int expanding_widgets = 0;
    int active_widgets    = 0;
    int rem_width         = FUNC11 ( FUNC0 ( b ) );
    int rem_height        = FUNC10 ( FUNC0 ( b ) );
    for ( GList *iter = FUNC3 ( b->children ); iter != NULL; iter = FUNC4 ( iter ) ) {
        widget * child = (widget *) iter->data;
        if ( child->enabled && child->expand == FALSE ) {
            FUNC13 ( child, rem_width, FUNC5 ( child ) );
        }
    }
    b->max_size = 0;
    for ( GList *iter = FUNC3 ( b->children ); iter != NULL; iter = FUNC4 ( iter ) ) {
        widget * child = (widget *) iter->data;
        if ( !child->enabled ) {
            continue;
        }
        active_widgets++;
        if ( child->expand == TRUE ) {
            expanding_widgets++;
            continue;
        }
        if ( child->h > 0 ) {
            b->max_size += child->h;
        }
    }
    if ( active_widgets > 0 ) {
        b->max_size += ( active_widgets - 1 ) * spacing;
    }
    if ( b->max_size > rem_height ) {
        b->max_size = rem_height;
        FUNC2 ( "Widgets to large (height) for box: %d %d", b->max_size, b->widget.h );
        return;
    }
    if ( active_widgets > 0 ) {
        int    top   = FUNC12 ( FUNC0 ( b ) );
        double rem   = rem_height - b->max_size;
        int    index = 0;
        for ( GList *iter = FUNC3 ( b->children ); iter != NULL; iter = FUNC4 ( iter ) ) {
            widget * child = (widget *) iter->data;
            if ( child->enabled == FALSE ) {
                continue;
            }
            if ( child->expand == TRUE ) {
                // Re-calculate to avoid round issues leaving one pixel left.
                int expanding_widgets_size = ( rem ) / ( expanding_widgets - index );
                FUNC7 ( child, FUNC8 ( FUNC0 ( b ) ), top );
                top += expanding_widgets_size;
                FUNC13 ( child, rem_width, expanding_widgets_size );
                top += spacing;
                rem -= expanding_widgets_size;
                index++;
            }
            else {
                FUNC7 ( child, FUNC8 ( FUNC0 ( b ) ), top );
                top += FUNC6 (  child );
                top += spacing;
            }
        }
    }
    b->max_size += FUNC9 ( FUNC0 ( b ) );
}