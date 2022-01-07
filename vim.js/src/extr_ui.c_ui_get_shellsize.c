
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ in_use; } ;


 int Columns ;
 int OK ;
 int Rows ;
 int check_shellsize () ;
 TYPE_1__ gui ;
 int gui_get_shellsize () ;
 int mch_get_shellsize () ;
 int set_number_default (char*,int ) ;

int
ui_get_shellsize()
{
    int retval;






 retval = mch_get_shellsize();

    check_shellsize();


    if (retval == OK)
    {
 set_number_default("lines", Rows);
 set_number_default("columns", Columns);
    }
    return retval;
}
