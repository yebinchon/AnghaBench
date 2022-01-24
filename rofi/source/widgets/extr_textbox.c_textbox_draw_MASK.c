#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  widget ;
struct TYPE_7__ {int h; scalar_t__ w; } ;
struct TYPE_8__ {int flags; double yalign; double xalign; int tbft; TYPE_1__ widget; int /*<<< orphan*/  layout; int /*<<< orphan*/  cursor; scalar_t__ blink; int /*<<< orphan*/  metrics; scalar_t__ changed; } ;
typedef  TYPE_2__ textbox ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_9__ {int x; int y; int height; } ;
typedef  TYPE_3__ PangoRectangle ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_OPERATOR_OVER ; 
 double DOT_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double M_PI ; 
 int PANGO_SCALE ; 
 int SELECTED ; 
 int TB_EDITABLE ; 
 int TB_INDICATOR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,double,double,double,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,double,double,double) ; 
 char* FUNC10 (char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int*,int*) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC23 ( widget *wid, cairo_t *draw )
{
    if ( wid == NULL ) {
        return;
    }
    textbox      *tb    = (textbox *) wid;
    unsigned int offset = ( ( tb->flags & TB_INDICATOR ) ? DOT_OFFSET : 0 );

    if ( tb->changed ) {
        FUNC3 ( tb );
    }

    // Skip the side MARGIN on the X axis.
    int x = FUNC20 ( FUNC2 ( tb ) );
    int top = FUNC22 ( FUNC2 ( tb ) );
    int y = ( FUNC13 ( tb->metrics ) - FUNC14 ( tb->layout ) ) / PANGO_SCALE;
    int line_width = 0, line_height = 0;
    // Get actual width.
    FUNC16 ( tb->layout, &line_width, &line_height );

    if ( tb->yalign > 0.001 ) {
        int bottom = FUNC19 ( FUNC2 ( tb ) );
        top = ( tb->widget.h - bottom - line_height - top ) * tb->yalign + top;
    }
    y += top;

    x += offset;

    if ( tb->xalign > 0.001 ) {
        int rem = FUNC0 ( 0, tb->widget.w - FUNC21 ( FUNC2 ( tb ) ) - line_width );
        x = tb->xalign * rem + FUNC20 ( FUNC2 ( tb ) );
    }
    // TODO check if this is still needed after flatning.
    FUNC8 ( draw, CAIRO_OPERATOR_OVER );
    FUNC9 ( draw, 0.0, 0.0, 0.0 );
    FUNC18 ( FUNC2 ( tb ), "text-color", draw );
    // draw the cursor
    if ( tb->flags & TB_EDITABLE && tb->blink ) {
        // We want to place the cursor based on the text shown.
        const char     *text = FUNC17 ( tb->layout );
        // Clamp the position, should not be needed, but we are paranoid.
        int            cursor_offset = FUNC1 ( tb->cursor, FUNC11 ( text, -1 ) );
        PangoRectangle pos;
        // convert to byte location.
        char           *offset = FUNC10 ( text, cursor_offset );
        FUNC15 ( tb->layout, offset - text, &pos, NULL );
        int            cursor_x      = pos.x / PANGO_SCALE;
        int            cursor_y      = pos.y / PANGO_SCALE;
        int            cursor_height = pos.height / PANGO_SCALE;
        int            cursor_width  = 2;
        FUNC7 ( draw, x + cursor_x, y + cursor_y, cursor_width, cursor_height );
        FUNC5 ( draw );
    }

    // Set ARGB
    // We need to set over, otherwise subpixel hinting wont work.
    FUNC6 ( draw, x, top );
    FUNC12 ( draw, tb->layout );

    if ( ( tb->flags & TB_INDICATOR ) == TB_INDICATOR && ( tb->tbft & ( SELECTED ) ) ) {
        FUNC4 ( draw, DOT_OFFSET / 2.0, tb->widget.h / 2.0, 2.0, 0, 2.0 * M_PI );
        FUNC5 ( draw );
    }
}