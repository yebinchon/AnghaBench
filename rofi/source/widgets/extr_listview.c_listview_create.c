
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int widget ;
typedef int listview_update_callback ;
struct TYPE_11__ {int get_desired_height; int trigger_action; int find_mouse_target; int draw; int resize; int free; } ;
struct TYPE_12__ {unsigned int eh; scalar_t__ type; void* fixed_columns; void* cycle; void* reverse; void* dynamic; void* fixed_num_lines; int menu_columns; int spacing; void* udata; int callback; int element_height; int scrollbar; int emode; TYPE_1__ widget; int listview_name; } ;
typedef TYPE_2__ listview ;
typedef void* gboolean ;
struct TYPE_13__ {TYPE_2__* box; } ;
typedef TYPE_3__ _listview_row ;
struct TYPE_14__ {void* fixed_num_lines; void* cycle; int menu_columns; } ;


 int DEFAULT_SPACING ;
 void* FALSE ;
 scalar_t__ LISTVIEW ;
 int PANGO_ELLIPSIZE_END ;
 int ROFI_ORIENTATION_VERTICAL ;
 void* TRUE ;
 int WIDGET (TYPE_2__*) ;
 int WIDGET_TYPE_LISTVIEW ;
 int _listview_draw ;
 TYPE_9__ config ;
 TYPE_2__* g_malloc0 (int) ;
 int g_strdup (char const*) ;
 int listview_create_row (TYPE_2__*,TYPE_3__*) ;
 int listview_find_mouse_target ;
 int listview_free ;
 int listview_get_desired_height ;
 int listview_resize ;
 int listview_set_show_scrollbar (TYPE_2__*,void*) ;
 int listview_trigger_action ;
 void* rofi_theme_get_boolean (int ,char*,void*) ;
 int rofi_theme_get_distance (int ,char*,int ) ;
 int rofi_theme_get_integer (int ,char*,int ) ;
 scalar_t__ rofi_theme_get_orientation (int ,char*,int ) ;
 int scrollbar_create (int ,char*) ;
 int widget_free (int ) ;
 int widget_get_desired_height (int ) ;
 int widget_init (int ,int *,int ,char const*) ;

listview *listview_create ( widget *parent, const char *name, listview_update_callback cb, void *udata, unsigned int eh, gboolean reverse )
{
    listview *lv = g_malloc0 ( sizeof ( listview ) );
    widget_init ( WIDGET ( lv ), parent, WIDGET_TYPE_LISTVIEW, name );
    lv->listview_name = g_strdup ( name );
    lv->widget.free = listview_free;
    lv->widget.resize = listview_resize;
    lv->widget.draw = _listview_draw;
    lv->widget.find_mouse_target = listview_find_mouse_target;
    lv->widget.trigger_action = listview_trigger_action;
    lv->widget.get_desired_height = listview_get_desired_height;
    lv->eh = eh;

    lv->emode = PANGO_ELLIPSIZE_END;
    lv->scrollbar = scrollbar_create ( WIDGET ( lv ), "scrollbar" );


    _listview_row row;
    listview_create_row ( lv, &row);
    lv->element_height = widget_get_desired_height ( WIDGET(row.box) );
    widget_free ( WIDGET ( row.box ) );

    lv->callback = cb;
    lv->udata = udata;


    lv->spacing = rofi_theme_get_distance ( WIDGET ( lv ), "spacing", DEFAULT_SPACING );
    lv->menu_columns = rofi_theme_get_integer ( WIDGET ( lv ), "columns", config.menu_columns );
    lv->fixed_num_lines = rofi_theme_get_boolean ( WIDGET ( lv ), "fixed-height", config.fixed_num_lines );
    lv->dynamic = rofi_theme_get_boolean ( WIDGET ( lv ), "dynamic", TRUE );
    lv->reverse = rofi_theme_get_boolean ( WIDGET ( lv ), "reverse", reverse );
    lv->cycle = rofi_theme_get_boolean ( WIDGET ( lv ), "cycle", config.cycle );
    lv->fixed_columns = rofi_theme_get_boolean ( WIDGET ( lv ), "fixed-columns", FALSE );

    lv->type = rofi_theme_get_orientation ( WIDGET ( lv ), "layout", ROFI_ORIENTATION_VERTICAL );
    if ( lv->type == LISTVIEW ) {
        listview_set_show_scrollbar ( lv, rofi_theme_get_boolean ( WIDGET ( lv ), "scrollbar", FALSE ) );
    }
    else {
        listview_set_show_scrollbar ( lv, FALSE );
    }
    return lv;
}
