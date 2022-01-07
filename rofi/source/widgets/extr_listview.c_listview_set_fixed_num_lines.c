
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fixed_num_lines; } ;
typedef TYPE_1__ listview ;


 int TRUE ;

void listview_set_fixed_num_lines ( listview *lv )
{
    if ( lv ) {
        lv->fixed_num_lines = TRUE;
    }
}
