
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_15__ {int sort; int case_sensitive; } ;
struct TYPE_12__ {int UTF8_STRING; } ;
struct TYPE_14__ {int connection; TYPE_1__ ewmh; } ;
struct TYPE_13__ {int retv; unsigned int filtered_lines; void* quit; void** line_map; void* selected_line; int list_view; void* refilter; int text; int * case_indicator; } ;
struct TYPE_11__ {int main_window; } ;
typedef TYPE_2__ RofiViewState ;
typedef int KeyBindingAction ;
 size_t CLIPBOARD ;
 TYPE_10__ CacheState ;

 int MENU_CANCEL ;
 int MENU_CUSTOM_ACTION ;
 void* MENU_CUSTOM_INPUT ;
 int MENU_ENTRY_DELETE ;
 int MENU_LOWER_MASK ;
 int MENU_NEXT ;
 void* MENU_OK ;
 int MENU_PREVIOUS ;
 int MENU_QUICK_SWITCH ;
 void* TRUE ;
 void* UINT32_MAX ;
 int XCB_ATOM_PRIMARY ;
 int XCB_CURRENT_TIME ;
 TYPE_9__ config ;
 int get_matching_state () ;
 unsigned int listview_get_selected (int ) ;
 int listview_nav_down (int ) ;
 int listview_nav_left (int ) ;
 int listview_nav_page_next (int ) ;
 int listview_nav_page_prev (int ) ;
 int listview_nav_right (int ) ;
 int listview_nav_up (int ) ;
 int listview_toggle_ellipsizing (int ) ;
 int * netatoms ;
 int rofi_capture_screenshot () ;
 TYPE_2__* rofi_view_get_active () ;
 int rofi_view_nav_first (TYPE_2__*) ;
 int rofi_view_nav_last (TYPE_2__*) ;
 int rofi_view_nav_row_select (TYPE_2__*) ;
 int rofi_view_nav_row_tab (TYPE_2__*) ;
 int textbox_keybinding (int ,int) ;
 int textbox_text (int *,int ) ;
 TYPE_3__* xcb ;
 int xcb_convert_selection (int ,int ,int ,int ,int ,int ) ;
 int xcb_flush (int ) ;

__attribute__((used)) static void rofi_view_trigger_global_action ( KeyBindingAction action )
{
    RofiViewState *state = rofi_view_get_active ();
    switch ( action )
    {

    case 156:
        xcb_convert_selection ( xcb->connection, CacheState.main_window, XCB_ATOM_PRIMARY,
                                xcb->ewmh.UTF8_STRING, xcb->ewmh.UTF8_STRING, XCB_CURRENT_TIME );
        xcb_flush ( xcb->connection );
        break;
    case 155:
        xcb_convert_selection ( xcb->connection, CacheState.main_window, netatoms[CLIPBOARD],
                                xcb->ewmh.UTF8_STRING, xcb->ewmh.UTF8_STRING, XCB_CURRENT_TIME );
        xcb_flush ( xcb->connection );
        break;
    case 140:
        rofi_capture_screenshot ( );
        break;
    case 188:
        if ( state->list_view ) {
            listview_toggle_ellipsizing ( state->list_view );
        }
        break;
    case 128:
        if ( state->case_indicator != ((void*)0) ) {
            config.sort = !config.sort;
            state->refilter = TRUE;
            textbox_text ( state->case_indicator, get_matching_state () );
        }
        break;
    case 165:
        state->retv = MENU_PREVIOUS;
        ( state->selected_line ) = 0;
        state->quit = TRUE;
        break;

    case 166:
        state->retv = MENU_NEXT;
        ( state->selected_line ) = 0;
        state->quit = TRUE;
        break;

    case 129:
        if ( state->case_indicator != ((void*)0) ) {
            config.case_sensitive = !config.case_sensitive;
            ( state->selected_line ) = 0;
            state->refilter = TRUE;
            textbox_text ( state->case_indicator, get_matching_state () );
        }
        break;

    case 167:
    {
        unsigned int selected = listview_get_selected ( state->list_view );
        if ( selected < state->filtered_lines ) {
            ( state->selected_line ) = state->line_map[selected];
            state->retv = MENU_ENTRY_DELETE;
            state->quit = TRUE;
        }
        break;
    }
    case 139:
    case 137:
    case 136:
    case 135:
    case 134:
    case 133:
    case 132:
    case 131:
    case 130:
    case 138:
    {
        unsigned int index = action - 139;
        if ( index < state->filtered_lines ) {
            state->selected_line = state->line_map[index];
            state->retv = MENU_OK;
            state->quit = TRUE;
        }
        break;
    }
    case 186:
    case 175:
    case 174:
    case 173:
    case 172:
    case 171:
    case 170:
    case 169:
    case 168:
    case 185:
    case 184:
    case 183:
    case 182:
    case 181:
    case 180:
    case 179:
    case 178:
    case 177:
    case 176:
    {
        state->selected_line = UINT32_MAX;
        unsigned int selected = listview_get_selected ( state->list_view );
        if ( selected < state->filtered_lines ) {
            ( state->selected_line ) = state->line_map[selected];
        }
        state->retv = MENU_QUICK_SWITCH | ( ( action - 186 ) & MENU_LOWER_MASK );
        state->quit = TRUE;
        break;
    }

    case 189:
        state->retv = MENU_CANCEL;
        state->quit = TRUE;
        break;
    case 141:
        listview_nav_up ( state->list_view );
        break;
    case 142:
        rofi_view_nav_row_tab ( state );
        break;
    case 148:
        listview_nav_down ( state->list_view );
        break;
    case 145:
        listview_nav_left ( state->list_view );
        break;
    case 144:
        listview_nav_right ( state->list_view );
        break;
    case 157:
        listview_nav_page_prev ( state->list_view );
        break;
    case 158:
        listview_nav_page_next ( state->list_view );
        break;
    case 147:
        rofi_view_nav_first ( state );
        break;
    case 146:
        rofi_view_nav_last ( state );
        break;
    case 143:
        rofi_view_nav_row_select ( state );
        break;

    case 164:
    {
        if ( textbox_keybinding ( state->text, action ) == 0 ) {
            listview_nav_left ( state->list_view );
        }
        break;
    }
    case 163:
    {
        if ( textbox_keybinding ( state->text, action ) == 0 ) {
            listview_nav_right ( state->list_view );
        }
        break;
    }
    case 187:
    case 161:
    case 162:
    case 152:
    case 151:
    case 150:
    case 149:
    case 153:
    case 160:
    case 159:
    case 154:
    {
        int rc = textbox_keybinding ( state->text, action );
        if ( rc == 1 ) {

            state->refilter = TRUE;
        }
        else if ( rc == 2 ) {

        }
        break;
    }
    case 192:
    {
        unsigned int selected = listview_get_selected ( state->list_view );
        state->selected_line = UINT32_MAX;
        if ( selected < state->filtered_lines ) {
            ( state->selected_line ) = state->line_map[selected];
            state->retv = MENU_OK;
        }
        else {

            state->retv = MENU_CUSTOM_INPUT;
        }
        state->retv |= MENU_CUSTOM_ACTION;
        state->quit = TRUE;
        break;
    }
    case 191:
    {
        state->selected_line = UINT32_MAX;
        state->retv = MENU_CUSTOM_INPUT;
        state->quit = TRUE;
        break;
    }
    case 190:
    {

        unsigned int selected = listview_get_selected ( state->list_view );
        state->selected_line = UINT32_MAX;
        if ( selected < state->filtered_lines ) {
            ( state->selected_line ) = state->line_map[selected];
            state->retv = MENU_OK;
        }
        else {

            state->retv = MENU_CUSTOM_INPUT;
        }

        state->quit = TRUE;
        break;
    }
    }
}
