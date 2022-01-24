#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_5__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {int /*<<< orphan*/  edit_surf; TYPE_1__ mon; int /*<<< orphan*/ * fake_bg; scalar_t__ fake_bgrel; int /*<<< orphan*/ * edit_draw; } ;
struct TYPE_6__ {int /*<<< orphan*/  main_window; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_2__ RofiViewState ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_OPERATOR_OVER ; 
 int /*<<< orphan*/  CAIRO_OPERATOR_SOURCE ; 
 TYPE_4__ CacheState ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12 ( RofiViewState *state, gboolean qr )
{
    if ( !FUNC11 ( FUNC2 ( state->main_window ) ) ) {
        return;
    }
    FUNC8 ( "Redraw view" );
    FUNC0 ();
    cairo_t *d = CacheState.edit_draw;
    FUNC4 ( d, CAIRO_OPERATOR_SOURCE );
    if ( CacheState.fake_bg != NULL ) {
        if ( CacheState.fake_bgrel ) {
            FUNC6 ( d, CacheState.fake_bg, 0.0, 0.0 );
        }
        else {
            FUNC6 ( d, CacheState.fake_bg,
                                       -(double) ( state->x - CacheState.mon.x ),
                                       -(double) ( state->y - CacheState.mon.y ) );
        }
        FUNC3 ( d );
        FUNC4 ( d, CAIRO_OPERATOR_OVER );
    }
    else {
        // Paint the background transparent.
        FUNC5 ( d, 0, 0, 0, 0.0 );
        FUNC3 ( d );
    }
    FUNC1 ( "Background" );

    // Always paint as overlay over the background.
    FUNC4 ( d, CAIRO_OPERATOR_OVER );
    FUNC10 ( FUNC2 ( state->main_window ), d );

    FUNC1 ( "widgets" );
    FUNC7 ( CacheState.edit_surf );
    if ( qr ) {
        FUNC9 ();
    }
}