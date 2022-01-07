
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int widget ;
struct TYPE_2__ {scalar_t__ type; } ;
typedef TYPE_1__ listview ;
typedef int cairo_t ;


 scalar_t__ LISTVIEW ;
 int barview_draw (int *,int *) ;
 int listview_draw (int *,int *) ;

__attribute__((used)) static void _listview_draw ( widget *wid, cairo_t *draw )
{
    listview *lv = (listview *) wid;
    if ( lv->type == LISTVIEW ) {
        listview_draw ( wid, draw );
    }
    else {
        barview_draw ( wid, draw );
    }
}
