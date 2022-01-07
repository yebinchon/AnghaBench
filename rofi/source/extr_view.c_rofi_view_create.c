
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_18__ ;


struct TYPE_22__ {int * sncontext; int connection; } ;
struct TYPE_21__ {scalar_t__ data; } ;
struct TYPE_20__ {int* distance; void (* finalize ) (TYPE_1__*) ;int main_window; void* quit; int height; int list_view; int width; int num_lines; scalar_t__ line_map; scalar_t__ text; int * sw; void* mouse_seen; int refilter; void* skip_absorb; int retv; int selected_line; int menu_flags; } ;
struct TYPE_19__ {int flags; int main_window; } ;
typedef TYPE_1__ RofiViewState ;
typedef int Mode ;
typedef int MenuFlags ;
typedef TYPE_2__ GList ;


 TYPE_18__ CacheState ;
 void* FALSE ;
 int MENU_CANCEL ;
 int MENU_NORMAL_WINDOW ;
 int ROFI_ORIENTATION_VERTICAL ;
 int TICK () ;
 int TICK_N (char*) ;
 int TRUE ;
 int UINT32_MAX ;
 int WIDGET (int ) ;
 TYPE_1__* __rofi_view_state_create () ;
 int box_create (int *,char*,int ) ;
 int g_free (char*) ;
 int g_list_free_full (TYPE_2__*,int (*) (char*)) ;
 TYPE_2__* g_list_next (TYPE_2__ const*) ;
 scalar_t__ g_malloc0_n (int ,int) ;
 char* g_strdup_printf (char*,int ) ;
 int listview_set_fixed_num_lines (int ) ;
 int mode_get_display_name (int *) ;
 int mode_get_num_entries (int *) ;
 TYPE_2__* rofi_theme_get_list (int ,char*,char*) ;
 int rofi_view_add_widget (TYPE_1__*,int ,char const*) ;
 int rofi_view_calculate_height (TYPE_1__*) ;
 int rofi_view_calculate_window_position (TYPE_1__*) ;
 int rofi_view_calculate_window_width (TYPE_1__*) ;
 int rofi_view_refilter (TYPE_1__*) ;
 int rofi_view_set_window_title (char*) ;
 int rofi_view_update (TYPE_1__*,int ) ;
 int rofi_view_window_update_size (TYPE_1__*) ;
 int sn_launchee_context_complete (int *) ;
 int textbox_cursor_end (scalar_t__) ;
 int textbox_text (scalar_t__,char const*) ;
 int widget_queue_redraw (int ) ;
 int widget_resize (int ,int ,int) ;
 TYPE_3__* xcb ;
 int xcb_flush (int ) ;
 int xcb_map_window (int ,int ) ;

RofiViewState *rofi_view_create ( Mode *sw,
                                  const char *input,
                                  MenuFlags menu_flags,
                                  void ( *finalize )( RofiViewState * ) )
{
    TICK ();
    RofiViewState *state = __rofi_view_state_create ();
    state->menu_flags = menu_flags;
    state->sw = sw;
    state->selected_line = UINT32_MAX;
    state->retv = MENU_CANCEL;
    state->distance = ((void*)0);
    state->quit = FALSE;
    state->skip_absorb = FALSE;

    state->refilter = TRUE;
    state->finalize = finalize;
    state->mouse_seen = FALSE;


    state->num_lines = mode_get_num_entries ( sw );

    if ( state->sw ) {
        char * title = g_strdup_printf ( "rofi - %s", mode_get_display_name (state->sw ) );
        rofi_view_set_window_title ( title );
        g_free ( title );
    } else {
        rofi_view_set_window_title ( "rofi" );
    }
    TICK_N ( "Startup notification" );


    TICK_N ( "Get active monitor" );

    state->main_window = box_create ( ((void*)0), "window", ROFI_ORIENTATION_VERTICAL );

    GList *list = rofi_theme_get_list ( WIDGET ( state->main_window ), "children", "mainbox" );
    for ( const GList *iter = list; iter != ((void*)0); iter = g_list_next ( iter ) ) {
        rofi_view_add_widget ( state, WIDGET ( state->main_window ), (const char *) iter->data );
    }
    g_list_free_full ( list, g_free );

    if ( state->text && input ) {
        textbox_text ( state->text, input );
        textbox_cursor_end ( state->text );
    }



    state->line_map = g_malloc0_n ( state->num_lines, sizeof ( unsigned int ) );
    state->distance = (int *) g_malloc0_n ( state->num_lines, sizeof ( int ) );

    rofi_view_calculate_window_width ( state );

    widget_resize ( WIDGET ( state->main_window ), state->width, 100 );

    if ( ( CacheState.flags & MENU_NORMAL_WINDOW ) == MENU_NORMAL_WINDOW ) {
        listview_set_fixed_num_lines ( state->list_view );
    }

    state->height = rofi_view_calculate_height ( state );

    rofi_view_calculate_window_position ( state );
    rofi_view_window_update_size ( state );

    state->quit = FALSE;
    rofi_view_refilter ( state );
    rofi_view_update ( state, TRUE );
    xcb_map_window ( xcb->connection, CacheState.main_window );
    widget_queue_redraw ( WIDGET ( state->main_window ) );
    xcb_flush ( xcb->connection );
    if ( xcb->sncontext != ((void*)0) ) {
        sn_launchee_context_complete ( xcb->sncontext );
    }
    return state;
}
