#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {unsigned int h; } ;
typedef  TYPE_3__ widget ;
struct TYPE_13__ {int w; } ;
struct TYPE_16__ {scalar_t__ scroll_type; int cur_columns; int max_rows; unsigned int last_offset; scalar_t__ cur_elements; int element_height; int /*<<< orphan*/  scrollbar; TYPE_2__* boxes; scalar_t__ rchanged; scalar_t__ reverse; TYPE_1__ widget; scalar_t__ req_elements; int /*<<< orphan*/  spacing; scalar_t__ selected; } ;
typedef  TYPE_4__ listview ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_14__ {int /*<<< orphan*/  box; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ LISTVIEW_SCROLL_CONTINIOUS ; 
 unsigned int FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_HORIZONTAL ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_VERTICAL ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (TYPE_4__*) ; 
 unsigned int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,unsigned int,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 unsigned int FUNC13 (TYPE_3__*) ; 
 int FUNC14 (TYPE_3__*) ; 
 scalar_t__ FUNC15 (TYPE_3__*) ; 
 int FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC18 ( widget *wid, cairo_t *draw )
{
    unsigned int offset = 0;
    listview     *lv    = (listview *) wid;
    if ( lv->scroll_type == LISTVIEW_SCROLL_CONTINIOUS ) {
        offset = FUNC3 ( lv );
    }
    else {
        offset = FUNC4 ( lv );
    }
    // Set these all together to make sure they update consistently.
    FUNC7 ( lv->scrollbar, lv->req_elements );
    FUNC6 ( lv->scrollbar, lv->cur_columns * lv->max_rows );
    if ( lv->reverse ) {
        FUNC5 ( lv->scrollbar, lv->req_elements - lv->selected - 1 );
    }
    else {
        FUNC5 ( lv->scrollbar, lv->selected  );
    }
    lv->last_offset = offset;
    int spacing_vert = FUNC2 ( lv->spacing, ROFI_ORIENTATION_VERTICAL );
    int spacing_hori = FUNC2 ( lv->spacing, ROFI_ORIENTATION_HORIZONTAL );

    int left_offset = FUNC14 ( wid );
    int top_offset  = FUNC16 ( wid );
    /*
       if ( lv->scrollbar->widget.index == 0 ) {
        left_offset += spacing_hori + lv->scrollbar->widget.w;
       }
     */
    if ( lv->cur_elements > 0 && lv->max_rows > 0 ) {
        // Set new x/y position.
        unsigned int max = FUNC0 ( lv->cur_elements, lv->req_elements - offset );
        if ( lv->rchanged ) {
            unsigned int width = lv->widget.w - spacing_hori * ( lv->cur_columns - 1 );
            width -= FUNC15 ( wid );
            if ( FUNC10 ( FUNC1 ( lv->scrollbar ) ) ) {
                width -= spacing_hori;
                width -= FUNC11 ( FUNC1 ( lv->scrollbar ) );
            }
            unsigned int element_width = ( width ) / lv->cur_columns;
            for ( unsigned int i = 0; i < max; i++ ) {
                unsigned int ex = left_offset + ( ( i ) / lv->max_rows ) * ( element_width + spacing_hori );
                if ( lv->reverse ) {
                    unsigned int ey = wid->h - ( FUNC13 ( wid ) + ( ( i ) % lv->max_rows ) * ( lv->element_height + spacing_vert ) ) - lv->element_height;
                    FUNC12 ( FUNC1(lv->boxes[i].box), ex, ey);
                    FUNC17 ( FUNC1 (lv->boxes[i].box), element_width, lv->element_height);
                }
                else {
                    unsigned int ey = top_offset + ( ( i ) % lv->max_rows ) * ( lv->element_height + spacing_vert );
                    FUNC12 ( FUNC1(lv->boxes[i].box), ex, ey);
                    FUNC17 ( FUNC1 (lv->boxes[i].box), element_width, lv->element_height);
                }

                FUNC8 ( lv, i, i + offset, TRUE );
                FUNC9 ( FUNC1 ( lv->boxes[i].box ), draw );
            }
            lv->rchanged = FALSE;
        }
        else {
            for ( unsigned int i = 0; i < max; i++ ) {
                FUNC8 ( lv, i, i + offset, FALSE );
                FUNC9 ( FUNC1 ( lv->boxes[i].box ), draw );
            }
        }
    }
    FUNC9 ( FUNC1 ( lv->scrollbar ), draw );
}