
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ reverse; } ;
typedef TYPE_1__ listview ;


 int listview_nav_down_int (TYPE_1__*) ;
 int listview_nav_up_int (TYPE_1__*) ;

void listview_nav_down ( listview *lv )
{
    if ( lv == ((void*)0) ) {
        return;
    }
    if ( lv->reverse ) {
        listview_nav_up_int ( lv );
    }
    else {
        listview_nav_down_int ( lv );
    }
}
