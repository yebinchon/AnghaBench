#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  widget ;
typedef  int /*<<< orphan*/  textbox ;
typedef  int /*<<< orphan*/  icon ;
typedef  int /*<<< orphan*/  box ;
typedef  int TextboxFlags ;
struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {int menu_flags; int num_modi; int /*<<< orphan*/ * overlay; int /*<<< orphan*/ ** modi; int /*<<< orphan*/ * sidebar_bar; int /*<<< orphan*/  const* sw; int /*<<< orphan*/  num_lines; int /*<<< orphan*/ * list_view; int /*<<< orphan*/ * mesg_box; int /*<<< orphan*/ * mesg_tb; int /*<<< orphan*/ * text; int /*<<< orphan*/ * case_indicator; int /*<<< orphan*/ * tb_filtered_rows; int /*<<< orphan*/ * tb_total_rows; int /*<<< orphan*/ * prompt; } ;
struct TYPE_14__ {int /*<<< orphan*/  menu_lines; int /*<<< orphan*/  scroll_method; int /*<<< orphan*/  element_height; scalar_t__ sidebar_mode; } ;
typedef  TYPE_1__ RofiViewState ;
typedef  int /*<<< orphan*/  Mode ;
typedef  TYPE_2__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HIGHLIGHT ; 
 int MENU_INDICATOR ; 
 int MENU_PASSWORD ; 
 int /*<<< orphan*/  NORMAL ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_HORIZONTAL ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_VERTICAL ; 
 int TB_AUTOHEIGHT ; 
 int TB_AUTOWIDTH ; 
 int TB_EDITABLE ; 
 int TB_MARKUP ; 
 int TB_PASSWORD ; 
 int TB_WRAP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  URGENT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WIDGET_TYPE_EDITBOX ; 
 int /*<<< orphan*/  WIDGET_TYPE_MODE_SWITCHER ; 
 int /*<<< orphan*/  WIDGET_TYPE_TEXTBOX_TEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 TYPE_13__ config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  g_free ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (TYPE_2__ const*) ; 
 int /*<<< orphan*/ ** FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC19 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC20 (unsigned int) ; 
 int FUNC21 () ; 
 int FUNC22 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC23 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  rofi_view_listview_mouse_activated_cb ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 scalar_t__ FUNC26 (char const*,char*) ; 
 int /*<<< orphan*/  textbox_button_trigger_action ; 
 void* FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,char*,double,double) ; 
 int /*<<< orphan*/  textbox_sidebar_modi_trigger_action ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  update_callback ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC31 ( RofiViewState *state, widget *parent_widget, const char *name )
{
    char   *defaults = NULL;
    widget *wid      = NULL;

    /**
     * MAINBOX
     */
    if ( FUNC26 ( name, "mainbox" ) == 0 ) {
        wid = (widget *) FUNC2 ( parent_widget, name, ROFI_ORIENTATION_VERTICAL );
        FUNC1 ( (box *) parent_widget, FUNC0 ( wid ), TRUE );
        if ( config.sidebar_mode ) {
            defaults = "inputbar,message,listview,mode-switcher";
        } else {
            defaults = "inputbar,message,listview";
        }
    }
    /**
     * INPUTBAR
     */
    else if ( FUNC26 ( name, "inputbar" ) == 0 ) {
        wid      = (widget *) FUNC2 ( parent_widget, name, ROFI_ORIENTATION_HORIZONTAL );
        defaults = "prompt,entry,overlay,case-indicator";
        FUNC1 ( (box *) parent_widget, FUNC0 ( wid ), FALSE );
    }
    /**
     * PROMPT
     */
    else if ( FUNC26 ( name, "prompt" ) == 0 ) {
        if ( state->prompt != NULL ) {
            FUNC7 ( "Prompt widget can only be added once to the layout." );
            return;
        }
        // Prompt box.
        state->prompt = FUNC27 ( parent_widget, WIDGET_TYPE_TEXTBOX_TEXT, name, TB_AUTOWIDTH | TB_AUTOHEIGHT, NORMAL, "", 0, 0 );
        FUNC25 ( state );
        FUNC1 ( (box *) parent_widget, FUNC0 ( state->prompt ), FALSE );
        defaults = NULL;
    }
    else if ( FUNC26 ( name, "num-rows" ) == 0 ){
        state->tb_total_rows = FUNC27 ( parent_widget, WIDGET_TYPE_TEXTBOX_TEXT, name, TB_AUTOWIDTH|TB_AUTOHEIGHT, NORMAL, "", 0, 0 );
        FUNC1 ( (box *) parent_widget, FUNC0 ( state->tb_total_rows ), FALSE );
        defaults = NULL;
    }
    else if ( FUNC26 ( name, "num-filtered-rows" ) == 0 ){
        state->tb_filtered_rows = FUNC27 ( parent_widget, WIDGET_TYPE_TEXTBOX_TEXT, name, TB_AUTOWIDTH|TB_AUTOHEIGHT, NORMAL, "", 0, 0 );
        FUNC1 ( (box *) parent_widget, FUNC0 ( state->tb_filtered_rows), FALSE );
        defaults = NULL;
    }
    /**
     * CASE INDICATOR
     */
    else if ( FUNC26 ( name, "case-indicator" ) == 0 ) {
        if ( state->case_indicator != NULL ) {
            FUNC7 ( "Case indicator widget can only be added once to the layout." );
            return;
        }
        state->case_indicator = FUNC27 ( parent_widget, WIDGET_TYPE_TEXTBOX_TEXT, name, TB_AUTOWIDTH | TB_AUTOHEIGHT, NORMAL, "*", 0, 0 );
        // Add small separator between case indicator and text box.
        FUNC1 ( (box *) parent_widget, FUNC0 ( state->case_indicator ), FALSE );
        FUNC28 ( state->case_indicator, FUNC11 () );
    }
    /**
     * ENTRY BOX
     */
    else if ( FUNC26 ( name, "entry" ) == 0 ) {
        if ( state->text != NULL ) {
            FUNC7 ( "Entry textbox widget can only be added once to the layout." );
            return;
        }
        // Entry box
        TextboxFlags tfl = TB_EDITABLE;
        tfl        |= ( ( state->menu_flags & MENU_PASSWORD ) == MENU_PASSWORD ) ? TB_PASSWORD : 0;
        state->text = FUNC27 ( parent_widget, WIDGET_TYPE_EDITBOX, name, tfl | TB_AUTOHEIGHT, NORMAL, NULL, 0, 0 );
        FUNC1 ( (box *) parent_widget, FUNC0 ( state->text ), TRUE );
    }
    /**
     * MESSAGE
     */
    else if ( FUNC26 ( name, "message" ) == 0 ) {
        if ( state->mesg_box != NULL ) {
            FUNC7 ( "Message widget can only be added once to the layout." );
            return;
        }
        state->mesg_box = FUNC4 ( parent_widget, name );
        state->mesg_tb  = FUNC27 ( FUNC0 ( state->mesg_box ), WIDGET_TYPE_TEXTBOX_TEXT, "textbox", TB_AUTOHEIGHT | TB_MARKUP | TB_WRAP, NORMAL, NULL, 0, 0 );
        FUNC3 ( state->mesg_box, FUNC0 ( state->mesg_tb ) );
        FUNC24 ( state );
        FUNC1 ( (box *) parent_widget, FUNC0 ( state->mesg_box ), FALSE );
    }
    /**
     * LISTVIEW
     */
    else if ( FUNC26 ( name, "listview" ) == 0 ) {
        if ( state->list_view != NULL ) {
            FUNC7 ( "Listview widget can only be added once to the layout." );
            return;
        }
        state->list_view = FUNC13 ( parent_widget, name, update_callback, state, config.element_height, 0 );
        FUNC1 ( (box *) parent_widget, FUNC0 ( state->list_view ), TRUE );
        // Set configuration
        FUNC16 ( state->list_view, ( state->menu_flags & MENU_INDICATOR ) == MENU_INDICATOR );
        FUNC18 ( state->list_view, config.scroll_method );
        FUNC15 ( state->list_view, rofi_view_listview_mouse_activated_cb, state );

        int lines = FUNC22 ( FUNC0 ( state->list_view ), "lines", config.menu_lines );
        FUNC17 ( state->list_view, lines );
        FUNC14 ( state->list_view, state->num_lines );
    }
    /**
     * MODE SWITCHER
     */
    else if ( FUNC26 ( name, "mode-switcher" ) == 0 || FUNC26 ( name, "sidebar" ) == 0 ) {
        if ( state->sidebar_bar != NULL ) {
            FUNC7 ( "Mode-switcher can only be added once to the layout." );
            return;
        }
        state->sidebar_bar = FUNC2 ( parent_widget, name, ROFI_ORIENTATION_HORIZONTAL );
        FUNC1 ( (box *) parent_widget, FUNC0 ( state->sidebar_bar ), FALSE );
        state->num_modi = FUNC21 ();
        state->modi     = FUNC10 ( state->num_modi * sizeof ( textbox * ) );
        for ( unsigned int j = 0; j < state->num_modi; j++ ) {
            const Mode * mode = FUNC20 ( j );
            state->modi[j] = FUNC27 ( FUNC0 ( state->sidebar_bar ), WIDGET_TYPE_MODE_SWITCHER, "button", TB_AUTOHEIGHT, ( mode == state->sw ) ? HIGHLIGHT : NORMAL,
                    FUNC19 ( mode  ), 0.5, 0.5 );
            FUNC1 ( state->sidebar_bar, FUNC0 ( state->modi[j] ), TRUE );
            FUNC30 ( FUNC0 ( state->modi[j] ), textbox_sidebar_modi_trigger_action, state );
        }
    }
    else if ( FUNC5 ( name, "overlay" ) == 0 ) {
        state->overlay = FUNC27 ( FUNC0 ( parent_widget ), WIDGET_TYPE_TEXTBOX_TEXT, "overlay", TB_AUTOWIDTH | TB_AUTOHEIGHT, URGENT, "blaat", 0.5, 0 );
        FUNC1 ( (box *) parent_widget, FUNC0 ( state->overlay), FALSE );
        FUNC29 ( FUNC0 ( state->overlay ) );
    }
    else if (  FUNC6 ( name, "textbox", 7 ) == 0 ) {
        textbox *t = FUNC27 ( parent_widget, WIDGET_TYPE_TEXTBOX_TEXT, name, TB_AUTOHEIGHT | TB_WRAP, NORMAL, "", 0, 0 );
        FUNC1 ( (box *) parent_widget, FUNC0 ( t ), TRUE );
    }
    else if (  FUNC6 ( name, "button", 6 ) == 0 ) {
        textbox *t = FUNC27 ( parent_widget, WIDGET_TYPE_EDITBOX, name, TB_AUTOHEIGHT | TB_WRAP, NORMAL, "", 0, 0 );
        FUNC1 ( (box *) parent_widget, FUNC0 ( t ), TRUE );
        FUNC30 ( FUNC0 ( t ), textbox_button_trigger_action, state );
    }
    else if (  FUNC6 ( name, "icon", 4 ) == 0 ) {
        icon *t = FUNC12 ( parent_widget, name );
        FUNC1 ( (box *) parent_widget, FUNC0 ( t ), TRUE );
    }
    else {
        wid = (widget *) FUNC2 ( parent_widget, name, ROFI_ORIENTATION_VERTICAL );
        FUNC1 ( (box *) parent_widget, FUNC0 ( wid ), TRUE );
        //g_error("The widget %s does not exists. Invalid layout.", name);
    }
    if ( wid ) {
        GList *list = FUNC23 ( wid, "children", defaults );
        for ( const GList *iter = list; iter != NULL; iter = FUNC9 ( iter ) ) {
            FUNC31 ( state, wid, (const char *) iter->data );
        }
        FUNC8 ( list, g_free );
    }
}