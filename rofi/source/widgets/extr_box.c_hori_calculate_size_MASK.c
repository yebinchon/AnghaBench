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
struct TYPE_15__ {scalar_t__ enabled; scalar_t__ expand; scalar_t__ h; scalar_t__ w; } ;
typedef  TYPE_2__ widget ;
struct TYPE_14__ {int /*<<< orphan*/  w; } ;
struct TYPE_16__ {int max_size; int /*<<< orphan*/  children; TYPE_1__ widget; int /*<<< orphan*/  spacing; } ;
typedef  TYPE_3__ box ;
struct TYPE_17__ {scalar_t__ data; } ;
typedef  TYPE_4__ GList ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_HORIZONTAL ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int,int) ; 

__attribute__((used)) static void FUNC15 ( box *b )
{
    int spacing           = FUNC2 ( b->spacing, ROFI_ORIENTATION_HORIZONTAL );
    int expanding_widgets = 0;
    int active_widgets    = 0;
    int rem_width         = FUNC12 ( FUNC1 ( b ) );
    int rem_height        = FUNC11 ( FUNC1 ( b ) );
    for ( GList *iter = FUNC4 ( b->children ); iter != NULL; iter = FUNC5 ( iter ) ) {
        widget * child = (widget *) iter->data;
        if ( child->enabled && child->expand == FALSE ) {
            FUNC14 ( child,
                            FUNC6 ( child ), //child->w,
                            rem_height );
        }
    }
    b->max_size = 0;
    for ( GList *iter = FUNC4 ( b->children ); iter != NULL; iter = FUNC5 ( iter ) ) {
        widget * child = (widget *) iter->data;
        if ( !child->enabled ) {
            continue;
        }
        active_widgets++;
        if ( child->expand == TRUE ) {
            expanding_widgets++;
            continue;
        }
        // Size used by fixed width widgets.
        if ( child->h > 0 ) {
            b->max_size += child->w;
        }
    }
    b->max_size += FUNC0 ( 0, ( ( active_widgets - 1 ) * spacing ) );
    if ( b->max_size > ( rem_width ) ) {
        b->max_size = rem_width;
        FUNC3 ( "Widgets to large (width) for box: %d %d", b->max_size, b->widget.w );
        return;
    }
    if ( active_widgets > 0 ) {
        int    left  = FUNC9 ( FUNC1 ( b ) );
        double rem   = rem_width - b->max_size;
        int    index = 0;
        for ( GList *iter = FUNC4 ( b->children ); iter != NULL; iter = FUNC5 ( iter ) ) {
            widget * child = (widget *) iter->data;
            if ( child->enabled == FALSE  ) {
                continue;
            }
            if ( child->expand == TRUE ) {
                // Re-calculate to avoid round issues leaving one pixel left.
                int expanding_widgets_size = ( rem ) / ( expanding_widgets - index );
                FUNC8 ( child, left, FUNC13 ( FUNC1 ( b ) ) );
                left += expanding_widgets_size;
                FUNC14 ( child, expanding_widgets_size, rem_height );
                left += spacing;
                rem  -= expanding_widgets_size;
                index++;
            }
            else {
                FUNC8 ( child, left, FUNC13 ( FUNC1 ( b ) ) );
                left += FUNC7 (  child );
                left += spacing;
            }
        }
    }
    b->max_size += FUNC10 ( FUNC1 ( b ) );
}