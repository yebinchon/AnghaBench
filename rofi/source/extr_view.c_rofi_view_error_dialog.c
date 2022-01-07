
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int box ;
struct TYPE_11__ {int flags; int main_window; } ;
struct TYPE_10__ {int * sncontext; int connection; } ;
struct TYPE_9__ {int * main_window; int height; int width; int list_view; int * text; int finalize; int menu_flags; int retv; } ;
typedef TYPE_1__ RofiViewState ;


 TYPE_8__ CacheState ;
 int MENU_CANCEL ;
 int MENU_ERROR_DIALOG ;
 int MENU_NORMAL_WINDOW ;
 int NORMAL ;
 int ROFI_ORIENTATION_VERTICAL ;
 int TB_AUTOHEIGHT ;
 int TB_MARKUP ;
 int TB_WRAP ;
 int TRUE ;
 int * WIDGET (int *) ;
 int WIDGET_TYPE_TEXTBOX_TEXT ;
 TYPE_1__* __rofi_view_state_create () ;
 int box_add (int *,int *,int) ;
 void* box_create (int *,char*,int ) ;
 int listview_set_fixed_num_lines (int ) ;
 int process_result ;
 int rofi_view_calculate_window_position (TYPE_1__*) ;
 int rofi_view_calculate_window_width (TYPE_1__*) ;
 int rofi_view_set_active (TYPE_1__*) ;
 int rofi_view_window_update_size (TYPE_1__*) ;
 int sn_launchee_context_complete (int *) ;
 int * textbox_create (int *,int ,char*,int,int ,char const*,int ,int ) ;
 int widget_get_desired_height (int *) ;
 int widget_queue_redraw (int *) ;
 int widget_resize (int *,int ,int) ;
 TYPE_2__* xcb ;
 int xcb_map_window (int ,int ) ;

int rofi_view_error_dialog ( const char *msg, int markup )
{
    RofiViewState *state = __rofi_view_state_create ();
    state->retv = MENU_CANCEL;
    state->menu_flags = MENU_ERROR_DIALOG;
    state->finalize = process_result;

    state->main_window = box_create ( ((void*)0), "window", ROFI_ORIENTATION_VERTICAL );
    box *box = box_create ( WIDGET ( state->main_window ), "error-message", ROFI_ORIENTATION_VERTICAL );
    box_add ( state->main_window, WIDGET ( box ), TRUE );
    state->text = textbox_create ( WIDGET ( box ), WIDGET_TYPE_TEXTBOX_TEXT, "textbox", ( TB_AUTOHEIGHT | TB_WRAP ) + ( ( markup ) ? TB_MARKUP : 0 ),
                                   NORMAL, ( msg != ((void*)0) ) ? msg : "", 0, 0 );
    box_add ( box, WIDGET ( state->text ), TRUE );


    if ( ( CacheState.flags & MENU_NORMAL_WINDOW ) == MENU_NORMAL_WINDOW ) {
        listview_set_fixed_num_lines ( state->list_view );
    }
    rofi_view_calculate_window_width ( state );

    widget_resize ( WIDGET ( state->main_window ), state->width, 100 );

    state->height = widget_get_desired_height ( WIDGET ( state->main_window ) );


    rofi_view_calculate_window_position ( state );


    rofi_view_window_update_size ( state );


    xcb_map_window ( xcb->connection, CacheState.main_window );
    widget_queue_redraw ( WIDGET ( state->main_window ) );

    if ( xcb->sncontext != ((void*)0) ) {
        sn_launchee_context_complete ( xcb->sncontext );
    }


    rofi_view_set_active ( state );
    return TRUE;
}
