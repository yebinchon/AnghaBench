#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  box ;
struct TYPE_11__ {int flags; int /*<<< orphan*/  main_window; } ;
struct TYPE_10__ {int /*<<< orphan*/ * sncontext; int /*<<< orphan*/  connection; } ;
struct TYPE_9__ {int /*<<< orphan*/ * main_window; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  list_view; int /*<<< orphan*/ * text; int /*<<< orphan*/  finalize; int /*<<< orphan*/  menu_flags; int /*<<< orphan*/  retv; } ;
typedef  TYPE_1__ RofiViewState ;

/* Variables and functions */
 TYPE_8__ CacheState ; 
 int /*<<< orphan*/  MENU_CANCEL ; 
 int /*<<< orphan*/  MENU_ERROR_DIALOG ; 
 int MENU_NORMAL_WINDOW ; 
 int /*<<< orphan*/  NORMAL ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_VERTICAL ; 
 int TB_AUTOHEIGHT ; 
 int TB_MARKUP ; 
 int TB_WRAP ; 
 int TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WIDGET_TYPE_TEXTBOX_TEXT ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  process_result ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* xcb ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC15 ( const char *msg, int markup )
{
    RofiViewState *state = FUNC1 ();
    state->retv       = MENU_CANCEL;
    state->menu_flags = MENU_ERROR_DIALOG;
    state->finalize   = process_result;

    state->main_window = FUNC3 ( NULL, "window", ROFI_ORIENTATION_VERTICAL );
    box *box = FUNC3 ( FUNC0 ( state->main_window ), "error-message", ROFI_ORIENTATION_VERTICAL );
    FUNC2 ( state->main_window, FUNC0 ( box ), TRUE );
    state->text = FUNC10 ( FUNC0 ( box ), WIDGET_TYPE_TEXTBOX_TEXT, "textbox", ( TB_AUTOHEIGHT | TB_WRAP ) + ( ( markup ) ? TB_MARKUP : 0 ),
                                   NORMAL, ( msg != NULL ) ? msg : "", 0, 0 );
    FUNC2 ( box, FUNC0 ( state->text ), TRUE );

    // Make sure we enable fixed num lines when in normal window mode.
    if ( ( CacheState.flags & MENU_NORMAL_WINDOW ) == MENU_NORMAL_WINDOW ) {
        FUNC4 ( state->list_view );
    }
    FUNC6 ( state );
    // Need to resize otherwise calculated desired height is wrong.
    FUNC13 ( FUNC0 ( state->main_window ), state->width, 100 );
    // resize window vertically to suit
    state->height = FUNC11 ( FUNC0 ( state->main_window ) );

    // Calculte window position.
    FUNC5 ( state );

    // Move the window to the correct x,y position.
    FUNC8 ( state );

    // Display it.
    FUNC14 ( xcb->connection, CacheState.main_window );
    FUNC12 ( FUNC0 ( state->main_window ) );

    if ( xcb->sncontext != NULL ) {
        FUNC9 ( xcb->sncontext );
    }

    // Set it as current window.
    FUNC7 ( state );
    return TRUE;
}