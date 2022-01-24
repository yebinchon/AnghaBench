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
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  callback; } ;
struct TYPE_16__ {unsigned int start; int count; unsigned int* acount; char* pattern; TYPE_2__ st; int /*<<< orphan*/  plen; int /*<<< orphan*/ * mutex; int /*<<< orphan*/ * cond; int /*<<< orphan*/  stop; TYPE_4__* state; } ;
typedef  TYPE_3__ thread_state_view ;
typedef  int /*<<< orphan*/  glong ;
typedef  char gchar ;
struct TYPE_17__ {int num_lines; unsigned int* line_map; unsigned int filtered_lines; unsigned int selected_line; int height; void* refilter; scalar_t__ quit; int /*<<< orphan*/  retv; int /*<<< orphan*/  list_view; scalar_t__ tb_total_rows; scalar_t__ tb_filtered_rows; int /*<<< orphan*/  distance; int /*<<< orphan*/ * tokens; TYPE_1__* text; int /*<<< orphan*/  sw; void* reload; } ;
struct TYPE_14__ {int /*<<< orphan*/  text; } ;
struct TYPE_13__ {scalar_t__ auto_select; scalar_t__ sort; int /*<<< orphan*/  case_sensitive; } ;
typedef  TYPE_4__ RofiViewState ;
typedef  int /*<<< orphan*/  GMutex ;
typedef  int /*<<< orphan*/  GCond ;

/* Variables and functions */
 void* FALSE ; 
 unsigned int FUNC0 (int,int) ; 
 int /*<<< orphan*/  MENU_OK ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_11__ config ; 
 int /*<<< orphan*/  filter_elements ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int*,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC14 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int /*<<< orphan*/ * FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lev_sort ; 
 size_t FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (unsigned int*,unsigned int*,int) ; 
 char* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_4__*) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__,char*) ; 
 int /*<<< orphan*/  tpool ; 

__attribute__((used)) static void FUNC29 ( RofiViewState *state )
{
    FUNC2 ( "Filter start" );
    if ( state->reload ) {
        FUNC3 ( state );
        state->reload = FALSE;
    }
    if ( state->tokens ) {
        FUNC18 ( state->tokens );
        state->tokens = NULL;
    }
    if ( state->text && FUNC27 ( state->text->text ) > 0 ) {
        unsigned int j        = 0;
        gchar        *pattern = FUNC22 ( state->sw, state->text->text );
        glong        plen     = pattern ? FUNC16 ( pattern, -1 ) : 0;
        state->tokens = FUNC17 ( pattern, config.case_sensitive );
        /**
         * On long lists it can be beneficial to parallelize.
         * If number of threads is 1, no thread is spawn.
         * If number of threads > 1 and there are enough (> 1000) items, spawn jobs for the thread pool.
         * For large lists with 8 threads I see a factor three speedup of the whole function.
         */
        unsigned int      nt = FUNC0 ( 1, state->num_lines / 500 );
        thread_state_view states[nt];
        GCond             cond;
        GMutex            mutex;
        FUNC10 ( &mutex );
        FUNC5 ( &cond );
        unsigned int count = nt;
        unsigned int steps = ( state->num_lines + nt ) / nt;
        for ( unsigned int i = 0; i < nt; i++ ) {
            states[i].state       = state;
            states[i].start       = i * steps;
            states[i].stop        = FUNC1 ( state->num_lines, ( i + 1 ) * steps );
            states[i].count       = 0;
            states[i].cond        = &cond;
            states[i].mutex       = &mutex;
            states[i].acount      = &count;
            states[i].plen        = plen;
            states[i].pattern     = pattern;
            states[i].st.callback = filter_elements;
            if ( i > 0 ) {
                FUNC15 ( tpool, &states[i], NULL );
            }
        }
        // Run one in this thread.
        FUNC25 ( &states[0], NULL );
        // No need to do this with only one thread.
        if ( nt > 1 ) {
            FUNC11 ( &mutex );
            while ( count > 0 ) {
                FUNC6 ( &cond, &mutex );
            }
            FUNC12 ( &mutex );
        }
        FUNC4 ( &cond );
        FUNC9 ( &mutex );
        for ( unsigned int i = 0; i < nt; i++ ) {
            if ( j != states[i].start ) {
                FUNC21 ( &( state->line_map[j] ), &( state->line_map[states[i].start] ), sizeof ( unsigned int ) * ( states[i].count ) );
            }
            j += states[i].count;
        }
        if ( config.sort ) {
            FUNC13 ( state->line_map, j, sizeof ( int ), lev_sort, state->distance );
        }

        // Cleanup + bookkeeping.
        state->filtered_lines = j;
        FUNC8 ( pattern );
    }
    else{
        for ( unsigned int i = 0; i < state->num_lines; i++ ) {
            state->line_map[i] = i;
        }
        state->filtered_lines = state->num_lines;
    }
    FUNC20 ( state->list_view, state->filtered_lines );

    if ( state->tb_filtered_rows ) {
        char *r = FUNC14("%u", state->filtered_lines);
        FUNC28( state->tb_filtered_rows, r );
        FUNC8(r);
    }
    if ( state->tb_total_rows )  {
        char *r = FUNC14("%u", state->num_lines);
        FUNC28( state->tb_total_rows, r );
        FUNC8(r);
    }



    if ( config.auto_select == TRUE && state->filtered_lines == 1 && state->num_lines > 1 ) {
        ( state->selected_line ) = state->line_map[FUNC19 ( state->list_view  )];
        state->retv              = MENU_OK;
        state->quit              = TRUE;
    }
    // Size the window.
    int height = FUNC23 ( state );
    if ( height != state->height ) {
        state->height = height;
        FUNC24 ( state );
        FUNC26 ( state );
        FUNC7 ( "Resize based on re-filter" );
    }
    state->refilter = FALSE;
    FUNC2 ( "Filter done" );
}