
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int widget ;
struct TYPE_3__ {unsigned int cur_elements; int scrollbar; struct TYPE_3__* listview_name; struct TYPE_3__* boxes; int box; } ;
typedef TYPE_1__ listview ;


 int WIDGET (int ) ;
 int g_free (TYPE_1__*) ;
 int widget_free (int ) ;

__attribute__((used)) static void listview_free ( widget *wid )
{
    listview *lv = (listview *) wid;
    for ( unsigned int i = 0; i < lv->cur_elements; i++ ) {
        widget_free ( WIDGET ( lv->boxes [i].box ) );
    }
    g_free ( lv->boxes );

    g_free ( lv->listview_name );
    widget_free ( WIDGET ( lv->scrollbar ) );
    g_free ( lv );
}
