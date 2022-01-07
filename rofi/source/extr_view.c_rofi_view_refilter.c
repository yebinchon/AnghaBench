
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_15__ {int callback; } ;
struct TYPE_16__ {unsigned int start; int count; unsigned int* acount; char* pattern; TYPE_2__ st; int plen; int * mutex; int * cond; int stop; TYPE_4__* state; } ;
typedef TYPE_3__ thread_state_view ;
typedef int glong ;
typedef char gchar ;
struct TYPE_17__ {int num_lines; unsigned int* line_map; unsigned int filtered_lines; unsigned int selected_line; int height; void* refilter; scalar_t__ quit; int retv; int list_view; scalar_t__ tb_total_rows; scalar_t__ tb_filtered_rows; int distance; int * tokens; TYPE_1__* text; int sw; void* reload; } ;
struct TYPE_14__ {int text; } ;
struct TYPE_13__ {scalar_t__ auto_select; scalar_t__ sort; int case_sensitive; } ;
typedef TYPE_4__ RofiViewState ;
typedef int GMutex ;
typedef int GCond ;


 void* FALSE ;
 unsigned int MAX (int,int) ;
 int MENU_OK ;
 int MIN (unsigned int,unsigned int) ;
 int TICK_N (char*) ;
 scalar_t__ TRUE ;
 int _rofi_view_reload_row (TYPE_4__*) ;
 TYPE_11__ config ;
 int filter_elements ;
 int g_cond_clear (int *) ;
 int g_cond_init (int *) ;
 int g_cond_wait (int *,int *) ;
 int g_debug (char*) ;
 int g_free (char*) ;
 int g_mutex_clear (int *) ;
 int g_mutex_init (int *) ;
 int g_mutex_lock (int *) ;
 int g_mutex_unlock (int *) ;
 int g_qsort_with_data (unsigned int*,unsigned int,int,int ,int ) ;
 char* g_strdup_printf (char*,unsigned int) ;
 int g_thread_pool_push (int ,TYPE_3__*,int *) ;
 int g_utf8_strlen (char*,int) ;
 int * helper_tokenize (char*,int ) ;
 int helper_tokenize_free (int *) ;
 int lev_sort ;
 size_t listview_get_selected (int ) ;
 int listview_set_num_elements (int ,unsigned int) ;
 int memmove (unsigned int*,unsigned int*,int) ;
 char* mode_preprocess_input (int ,int ) ;
 int rofi_view_calculate_height (TYPE_4__*) ;
 int rofi_view_calculate_window_position (TYPE_4__*) ;
 int rofi_view_call_thread (TYPE_3__*,int *) ;
 int rofi_view_window_update_size (TYPE_4__*) ;
 scalar_t__ strlen (int ) ;
 int textbox_text (scalar_t__,char*) ;
 int tpool ;

__attribute__((used)) static void rofi_view_refilter ( RofiViewState *state )
{
    TICK_N ( "Filter start" );
    if ( state->reload ) {
        _rofi_view_reload_row ( state );
        state->reload = FALSE;
    }
    if ( state->tokens ) {
        helper_tokenize_free ( state->tokens );
        state->tokens = ((void*)0);
    }
    if ( state->text && strlen ( state->text->text ) > 0 ) {
        unsigned int j = 0;
        gchar *pattern = mode_preprocess_input ( state->sw, state->text->text );
        glong plen = pattern ? g_utf8_strlen ( pattern, -1 ) : 0;
        state->tokens = helper_tokenize ( pattern, config.case_sensitive );






        unsigned int nt = MAX ( 1, state->num_lines / 500 );
        thread_state_view states[nt];
        GCond cond;
        GMutex mutex;
        g_mutex_init ( &mutex );
        g_cond_init ( &cond );
        unsigned int count = nt;
        unsigned int steps = ( state->num_lines + nt ) / nt;
        for ( unsigned int i = 0; i < nt; i++ ) {
            states[i].state = state;
            states[i].start = i * steps;
            states[i].stop = MIN ( state->num_lines, ( i + 1 ) * steps );
            states[i].count = 0;
            states[i].cond = &cond;
            states[i].mutex = &mutex;
            states[i].acount = &count;
            states[i].plen = plen;
            states[i].pattern = pattern;
            states[i].st.callback = filter_elements;
            if ( i > 0 ) {
                g_thread_pool_push ( tpool, &states[i], ((void*)0) );
            }
        }

        rofi_view_call_thread ( &states[0], ((void*)0) );

        if ( nt > 1 ) {
            g_mutex_lock ( &mutex );
            while ( count > 0 ) {
                g_cond_wait ( &cond, &mutex );
            }
            g_mutex_unlock ( &mutex );
        }
        g_cond_clear ( &cond );
        g_mutex_clear ( &mutex );
        for ( unsigned int i = 0; i < nt; i++ ) {
            if ( j != states[i].start ) {
                memmove ( &( state->line_map[j] ), &( state->line_map[states[i].start] ), sizeof ( unsigned int ) * ( states[i].count ) );
            }
            j += states[i].count;
        }
        if ( config.sort ) {
            g_qsort_with_data ( state->line_map, j, sizeof ( int ), lev_sort, state->distance );
        }


        state->filtered_lines = j;
        g_free ( pattern );
    }
    else{
        for ( unsigned int i = 0; i < state->num_lines; i++ ) {
            state->line_map[i] = i;
        }
        state->filtered_lines = state->num_lines;
    }
    listview_set_num_elements ( state->list_view, state->filtered_lines );

    if ( state->tb_filtered_rows ) {
        char *r = g_strdup_printf("%u", state->filtered_lines);
        textbox_text( state->tb_filtered_rows, r );
        g_free(r);
    }
    if ( state->tb_total_rows ) {
        char *r = g_strdup_printf("%u", state->num_lines);
        textbox_text( state->tb_total_rows, r );
        g_free(r);
    }



    if ( config.auto_select == TRUE && state->filtered_lines == 1 && state->num_lines > 1 ) {
        ( state->selected_line ) = state->line_map[listview_get_selected ( state->list_view )];
        state->retv = MENU_OK;
        state->quit = TRUE;
    }

    int height = rofi_view_calculate_height ( state );
    if ( height != state->height ) {
        state->height = height;
        rofi_view_calculate_window_position ( state );
        rofi_view_window_update_size ( state );
        g_debug ( "Resize based on re-filter" );
    }
    state->refilter = FALSE;
    TICK_N ( "Filter done" );
}
