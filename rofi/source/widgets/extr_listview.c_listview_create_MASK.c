#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  widget ;
typedef  int /*<<< orphan*/  listview_update_callback ;
struct TYPE_11__ {int /*<<< orphan*/  get_desired_height; int /*<<< orphan*/  trigger_action; int /*<<< orphan*/  find_mouse_target; int /*<<< orphan*/  draw; int /*<<< orphan*/  resize; int /*<<< orphan*/  free; } ;
struct TYPE_12__ {unsigned int eh; scalar_t__ type; void* fixed_columns; void* cycle; void* reverse; void* dynamic; void* fixed_num_lines; int /*<<< orphan*/  menu_columns; int /*<<< orphan*/  spacing; void* udata; int /*<<< orphan*/  callback; int /*<<< orphan*/  element_height; int /*<<< orphan*/  scrollbar; int /*<<< orphan*/  emode; TYPE_1__ widget; int /*<<< orphan*/  listview_name; } ;
typedef  TYPE_2__ listview ;
typedef  void* gboolean ;
struct TYPE_13__ {TYPE_2__* box; } ;
typedef  TYPE_3__ _listview_row ;
struct TYPE_14__ {void* fixed_num_lines; void* cycle; int /*<<< orphan*/  menu_columns; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SPACING ; 
 void* FALSE ; 
 scalar_t__ LISTVIEW ; 
 int /*<<< orphan*/  PANGO_ELLIPSIZE_END ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_VERTICAL ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  WIDGET_TYPE_LISTVIEW ; 
 int /*<<< orphan*/  _listview_draw ; 
 TYPE_9__ config ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  listview_find_mouse_target ; 
 int /*<<< orphan*/  listview_free ; 
 int /*<<< orphan*/  listview_get_desired_height ; 
 int /*<<< orphan*/  listview_resize ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  listview_trigger_action ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

listview *FUNC13 ( widget *parent, const char *name, listview_update_callback cb, void *udata, unsigned int eh, gboolean reverse )
{
    listview *lv = FUNC1 ( sizeof ( listview ) );
    FUNC12 ( FUNC0 ( lv ), parent, WIDGET_TYPE_LISTVIEW, name );
    lv->listview_name             = FUNC2 ( name );
    lv->widget.free               = listview_free;
    lv->widget.resize             = listview_resize;
    lv->widget.draw               = _listview_draw;
    lv->widget.find_mouse_target  = listview_find_mouse_target;
    lv->widget.trigger_action     = listview_trigger_action;
    lv->widget.get_desired_height = listview_get_desired_height;
    lv->eh                        = eh;

    lv->emode     = PANGO_ELLIPSIZE_END;
    lv->scrollbar = FUNC9 ( FUNC0 ( lv ), "scrollbar" );
    // Calculate height of an element.
    //
    _listview_row row;
    FUNC3 ( lv, &row);
    lv->element_height = FUNC11 ( FUNC0(row.box) );
    FUNC10 ( FUNC0 ( row.box ) );

    lv->callback = cb;
    lv->udata    = udata;

    // Some settings.
    lv->spacing         = FUNC6 ( FUNC0 ( lv ), "spacing", DEFAULT_SPACING );
    lv->menu_columns    = FUNC7  ( FUNC0 ( lv ), "columns", config.menu_columns );
    lv->fixed_num_lines = FUNC5  ( FUNC0 ( lv ), "fixed-height", config.fixed_num_lines );
    lv->dynamic         = FUNC5  ( FUNC0 ( lv ), "dynamic", TRUE );
    lv->reverse         = FUNC5  ( FUNC0 ( lv ), "reverse", reverse );
    lv->cycle           = FUNC5 ( FUNC0 ( lv ), "cycle", config.cycle );
    lv->fixed_columns   = FUNC5 ( FUNC0 ( lv ), "fixed-columns", FALSE );

    lv->type = FUNC8 ( FUNC0 ( lv ), "layout", ROFI_ORIENTATION_VERTICAL );
    if ( lv->type == LISTVIEW ) {
        FUNC4 ( lv, FUNC5 ( FUNC0 ( lv ), "scrollbar", FALSE ) );
    }
    else {
        FUNC4 ( lv, FALSE );
    }
    return lv;
}