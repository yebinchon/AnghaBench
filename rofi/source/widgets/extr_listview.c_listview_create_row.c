
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


struct TYPE_19__ {scalar_t__ multi_select; } ;
typedef TYPE_1__ listview ;
struct TYPE_20__ {TYPE_1__* textbox; TYPE_1__* box; TYPE_1__* icon; } ;
typedef TYPE_2__ _listview_row ;
typedef int TextboxFlags ;
struct TYPE_21__ {scalar_t__ data; } ;
struct TYPE_18__ {scalar_t__ show_icons; } ;
typedef TYPE_3__ GList ;


 int FALSE ;
 int NORMAL ;
 int ROFI_ORIENTATION_HORIZONTAL ;
 int TB_AUTOHEIGHT ;
 int TB_INDICATOR ;
 int TRUE ;
 int WIDGET (TYPE_1__*) ;
 int WIDGET_TYPE_LISTVIEW_ELEMENT ;
 int WIDGET_TYPE_TEXTBOX_TEXT ;
 int box_add (TYPE_1__*,int ,int ) ;
 TYPE_1__* box_create (int ,char*,int ) ;
 TYPE_14__ config ;
 int g_free ;
 TYPE_3__* g_list_first (TYPE_3__*) ;
 int g_list_free_full (TYPE_3__*,int ) ;
 TYPE_3__* g_list_next (TYPE_3__*) ;
 TYPE_1__* icon_create (int ,char*) ;
 TYPE_3__* rofi_theme_get_list (int ,char*,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 TYPE_1__* textbox_create (int ,int ,char*,int,int ,char*,int ,int ) ;
 int widget_set_type (int ,int ) ;

__attribute__((used)) static void listview_create_row ( listview *lv, _listview_row *row )
{
    TextboxFlags flags = ( lv->multi_select ) ? TB_INDICATOR : 0;
    row->box = box_create ( WIDGET ( lv ), "element",ROFI_ORIENTATION_HORIZONTAL );
    widget_set_type ( WIDGET(row->box), WIDGET_TYPE_LISTVIEW_ELEMENT);
    GList *list = rofi_theme_get_list ( WIDGET(row->box), "children", "element-icon,element-text");

    row->textbox = ((void*)0);
    row->icon = ((void*)0);

    for ( GList *iter = g_list_first(list); iter != ((void*)0);iter = g_list_next(iter)){
        if ( strcasecmp((char *)iter->data, "element-icon") == 0 ) {
            if ( config.show_icons ) {
                row->icon = icon_create ( WIDGET ( row->box ), "element-icon" );
                box_add ( row->box, WIDGET ( row->icon ), FALSE);
            }
        } else if ( strcasecmp ((char *)iter->data, "element-text") == 0 ){
            row->textbox= textbox_create ( WIDGET ( row->box ), WIDGET_TYPE_TEXTBOX_TEXT, "element-text", TB_AUTOHEIGHT|flags, NORMAL, "DDD", 0, 0 );
            box_add ( row->box, WIDGET ( row->textbox ), TRUE);
        }
    }
    g_list_free_full ( list, g_free );
}
