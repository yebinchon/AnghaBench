
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int menu_lines; } ;
typedef TYPE_1__ listview ;



unsigned int listview_get_num_lines ( listview *lv )
{
    if ( lv ) {
        return lv->menu_lines;
    }
    return 0;
}
