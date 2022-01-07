
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int max_displayed_lines; } ;
typedef TYPE_1__ listview ;



void listview_set_max_lines ( listview *lv, unsigned int max_lines )
{
    if ( lv ) {
        lv->max_displayed_lines = max_lines;
    }
}
