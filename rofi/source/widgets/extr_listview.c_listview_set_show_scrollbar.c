
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scrollbar; } ;
typedef TYPE_1__ listview ;
typedef scalar_t__ gboolean ;


 int WIDGET (int ) ;
 int listview_recompute_elements (TYPE_1__*) ;
 int widget_disable (int ) ;
 int widget_enable (int ) ;

void listview_set_show_scrollbar ( listview *lv, gboolean enabled )
{
    if ( lv ) {
        if ( enabled ) {
            widget_enable ( WIDGET ( lv->scrollbar ) );
        }
        else {
            widget_disable ( WIDGET ( lv->scrollbar ) );
        }
        listview_recompute_elements ( lv );
    }
}
