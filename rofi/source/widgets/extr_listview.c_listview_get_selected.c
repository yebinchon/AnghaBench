
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int selected; } ;
typedef TYPE_1__ listview ;



unsigned int listview_get_selected ( listview *lv )
{
    if ( lv != ((void*)0) ) {
        return lv->selected;
    }
    return 0;
}
