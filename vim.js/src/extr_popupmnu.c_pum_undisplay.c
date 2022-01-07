
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOME_VALID ;
 int TRUE ;
 int * pum_array ;
 int redraw_all_later (int ) ;
 int redraw_tabline ;
 int status_redraw_all () ;

void
pum_undisplay()
{
    pum_array = ((void*)0);
    redraw_all_later(SOME_VALID);



    status_redraw_all();
}
