#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_18__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/ * sncontext; int /*<<< orphan*/  connection; } ;
struct TYPE_21__ {scalar_t__ data; } ;
struct TYPE_20__ {int* distance; void (* finalize ) (TYPE_1__*) ;int /*<<< orphan*/  main_window; void* quit; int /*<<< orphan*/  height; int /*<<< orphan*/  list_view; int /*<<< orphan*/  width; int /*<<< orphan*/  num_lines; scalar_t__ line_map; scalar_t__ text; int /*<<< orphan*/ * sw; void* mouse_seen; int /*<<< orphan*/  refilter; void* skip_absorb; int /*<<< orphan*/  retv; int /*<<< orphan*/  selected_line; int /*<<< orphan*/  menu_flags; } ;
struct TYPE_19__ {int flags; int /*<<< orphan*/  main_window; } ;
typedef  TYPE_1__ RofiViewState ;
typedef  int /*<<< orphan*/  Mode ;
typedef  int /*<<< orphan*/  MenuFlags ;
typedef  TYPE_2__ GList ;

/* Variables and functions */
 TYPE_18__ CacheState ; 
 void* FALSE ; 
 int /*<<< orphan*/  MENU_CANCEL ; 
 int MENU_NORMAL_WINDOW ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_VERTICAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/  (*) (char*)) ; 
 TYPE_2__* FUNC7 (TYPE_2__ const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 char* FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* xcb ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

RofiViewState *FUNC29 ( Mode *sw,
                                  const char *input,
                                  MenuFlags menu_flags,
                                  void ( *finalize )( RofiViewState * ) )
{
    FUNC0 ();
    RofiViewState *state = FUNC3 ();
    state->menu_flags    = menu_flags;
    state->sw            = sw;
    state->selected_line = UINT32_MAX;
    state->retv          = MENU_CANCEL;
    state->distance      = NULL;
    state->quit          = FALSE;
    state->skip_absorb   = FALSE;
    //We want to filter on the first run.
    state->refilter   = TRUE;
    state->finalize   = finalize;
    state->mouse_seen = FALSE;

    // Request the lines to show.
    state->num_lines = FUNC12 ( sw );

    if ( state->sw ) {
        char * title = FUNC9 ( "rofi - %s", FUNC11 (state->sw ) );
        FUNC19 ( title );
        FUNC5 ( title );
    } else {
        FUNC19 ( "rofi" );
    }
    FUNC1 ( "Startup notification" );

    // Get active monitor size.
    FUNC1 ( "Get active monitor" );

    state->main_window = FUNC4 ( NULL, "window", ROFI_ORIENTATION_VERTICAL );
    // Get children.
    GList *list = FUNC13 ( FUNC2 ( state->main_window ), "children", "mainbox" );
    for ( const GList *iter = list; iter != NULL; iter = FUNC7 ( iter ) ) {
        FUNC14 ( state, FUNC2 ( state->main_window ), (const char *) iter->data );
    }
    FUNC6 ( list, g_free );

    if ( state->text && input ) {
        FUNC24 ( state->text, input );
        FUNC23 ( state->text );
    }


    // filtered list
    state->line_map = FUNC8 ( state->num_lines, sizeof ( unsigned int ) );
    state->distance = (int *) FUNC8 ( state->num_lines, sizeof ( int ) );

    FUNC17 ( state );
    // Need to resize otherwise calculated desired height is wrong.
    FUNC26 ( FUNC2 ( state->main_window ), state->width, 100 );
    // Only needed when window is fixed size.
    if ( ( CacheState.flags & MENU_NORMAL_WINDOW ) == MENU_NORMAL_WINDOW ) {
        FUNC10 ( state->list_view );
    }

    state->height = FUNC15 ( state );
    // Move the window to the correct x,y position.
    FUNC16 ( state );
    FUNC21 ( state );

    state->quit = FALSE;
    FUNC18 ( state );
    FUNC20 ( state, TRUE );
    FUNC28 ( xcb->connection, CacheState.main_window );
    FUNC25 ( FUNC2 ( state->main_window ) );
    FUNC27 ( xcb->connection );
    if ( xcb->sncontext != NULL ) {
        FUNC22 ( xcb->sncontext );
    }
    return state;
}